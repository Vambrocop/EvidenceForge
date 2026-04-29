#!/usr/bin/env python3
"""Validate an EvidenceForge ML-assisted screening log."""

from __future__ import annotations

import argparse
import csv
import sys
from pathlib import Path


REQUIRED_COLUMNS = [
    "record_id",
    "source_database",
    "title",
    "abstract_available",
    "dedup_status",
    "ml_task",
    "human_decision",
    "reviewer",
]

ALLOWED_DECISIONS = {"include", "exclude", "maybe", "retrieve_full_text", "pending"}
ALLOWED_DEDUP = {"unique", "duplicate", "unclear"}


def read_rows(path: Path) -> list[dict[str, str]]:
    with path.open("r", encoding="utf-8-sig", newline="") as handle:
        reader = csv.DictReader(handle)
        if reader.fieldnames is None:
            raise ValueError("CSV has no header row.")
        return list(reader)


def validate(path: Path) -> tuple[list[str], list[str]]:
    rows = read_rows(path)
    errors: list[str] = []
    warnings: list[str] = []

    if not rows:
        errors.append("Screening log has no data rows.")
        return errors, warnings

    columns = set(rows[0].keys())
    for column in REQUIRED_COLUMNS:
        if column not in columns:
            errors.append(f"Missing required column: {column}")

    if errors:
        return errors, warnings

    record_ids: set[str] = set()

    for i, row in enumerate(rows, start=2):
        record_id = row.get("record_id", "").strip()
        decision = row.get("human_decision", "").strip()
        dedup = row.get("dedup_status", "").strip()
        reviewer = row.get("reviewer", "").strip()

        if not record_id:
            errors.append(f"Row {i}: record_id is blank.")
        elif record_id in record_ids:
            errors.append(f"Row {i}: duplicate record_id: {record_id}")
        record_ids.add(record_id)

        if decision not in ALLOWED_DECISIONS:
            errors.append(f"Row {i}: invalid human_decision: {decision}")
        if dedup not in ALLOWED_DEDUP:
            errors.append(f"Row {i}: invalid dedup_status: {dedup}")
        if not reviewer:
            errors.append(f"Row {i}: reviewer is blank.")

        if decision == "exclude" and not row.get("exclusion_reason", "").strip():
            errors.append(f"Row {i}: excluded record lacks exclusion_reason.")
        if row.get("ml_label", "").strip() and not row.get("ml_model", "").strip():
            warnings.append(f"Row {i}: ml_label exists but ml_model is blank.")
        if decision in {"maybe", "retrieve_full_text", "pending"}:
            warnings.append(f"Row {i}: record requires follow-up: {record_id}")

    return errors, warnings


def main() -> int:
    parser = argparse.ArgumentParser(description="Validate an EvidenceForge ML screening log.")
    parser.add_argument("--input", required=True, help="Path to screening log CSV.")
    args = parser.parse_args()

    path = Path(args.input)
    if not path.exists():
        print(f"ERROR: input file not found: {path}", file=sys.stderr)
        return 2

    try:
        errors, warnings = validate(path)
    except Exception as exc:  # noqa: BLE001 - CLI should report malformed files cleanly.
        print(f"ERROR: {exc}", file=sys.stderr)
        return 2

    for warning in warnings:
        print(f"WARNING: {warning}")
    for error in errors:
        print(f"ERROR: {error}")

    if errors:
        print(f"Validation failed: {len(errors)} error(s), {len(warnings)} warning(s).")
        return 1

    print(f"Validation passed: 0 errors, {len(warnings)} warning(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
