#!/usr/bin/env python3
"""Generate a simple PRISMA-style Mermaid flowchart from count CSV."""

from __future__ import annotations

import argparse
import csv
import sys
from pathlib import Path


EXPECTED_KEYS = [
    "records_database",
    "records_registers",
    "records_other",
    "duplicates_removed",
    "records_screened",
    "records_excluded",
    "reports_sought",
    "reports_not_retrieved",
    "reports_assessed",
    "reports_excluded",
    "studies_included",
    "studies_meta_analysis",
]


def read_counts(path: Path) -> dict[str, tuple[int, str]]:
    with path.open("r", encoding="utf-8-sig", newline="") as handle:
        rows = list(csv.DictReader(handle))

    counts: dict[str, tuple[int, str]] = {}
    for row in rows:
        stage = row.get("stage", "").strip()
        if not stage:
            continue
        try:
            count = int(row.get("count", "0"))
        except ValueError as exc:
            raise ValueError(f"Count for stage {stage!r} is not an integer.") from exc
        label = row.get("label", stage).strip() or stage
        counts[stage] = (count, label)
    return counts


def node(counts: dict[str, tuple[int, str]], key: str) -> str:
    count, label = counts.get(key, (0, key))
    return f'{key}["{label}<br/>n = {count}"]'


def mermaid(counts: dict[str, tuple[int, str]]) -> str:
    missing = [key for key in EXPECTED_KEYS if key not in counts]
    lines = ["flowchart TD"]
    if missing:
        lines.append(f'  missing["Missing stages: {", ".join(missing)}"]')

    for key in EXPECTED_KEYS:
        lines.append(f"  {node(counts, key)}")

    lines.extend(
        [
            "  records_database --> records_screened",
            "  records_registers --> records_screened",
            "  records_other --> records_screened",
            "  duplicates_removed --> records_screened",
            "  records_screened --> records_excluded",
            "  records_screened --> reports_sought",
            "  reports_sought --> reports_not_retrieved",
            "  reports_sought --> reports_assessed",
            "  reports_assessed --> reports_excluded",
            "  reports_assessed --> studies_included",
            "  studies_included --> studies_meta_analysis",
        ]
    )
    return "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate a PRISMA-style Mermaid flowchart.")
    parser.add_argument("--input", required=True, help="CSV with stage,count,label,notes columns.")
    parser.add_argument("--output", required=True, help="Output Markdown file.")
    args = parser.parse_args()

    input_path = Path(args.input)
    output_path = Path(args.output)

    if not input_path.exists():
        print(f"ERROR: input file not found: {input_path}", file=sys.stderr)
        return 2

    try:
        counts = read_counts(input_path)
        diagram = mermaid(counts)
    except Exception as exc:  # noqa: BLE001 - CLI should report malformed files cleanly.
        print(f"ERROR: {exc}", file=sys.stderr)
        return 2

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("```mermaid\n" + diagram + "```\n", encoding="utf-8")
    print(f"Wrote PRISMA Mermaid diagram to {output_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
