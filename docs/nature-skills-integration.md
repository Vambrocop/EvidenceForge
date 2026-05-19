# Nature-Skills Integration Note

External repository: https://github.com/Yuan1z0825/nature-skills

Local status:

```text
reviewed and installed into local Codex skills on 2026-05-19
```

Installed local Codex skills:

```text
nature-academic-search
nature-citation
nature-data
nature-figure
nature-paper2ppt
nature-polishing
nature-reader
nature-response
nature-writing
```

Codex usually needs a restart before newly installed skills appear in the active skill list.

## Why It Matters For EvidenceForge

EvidenceForge focuses on evidence synthesis, meta-analysis, systematic review, reproducibility, and high-value paper paradigms. `nature-skills` is complementary because it covers the publication-facing layer:

- reading full papers into bilingual Markdown;
- finding and verifying literature/citations;
- preparing Nature-style figures;
- polishing academic prose;
- drafting manuscript sections;
- preparing Data Availability statements;
- responding to reviewers;
- turning papers into Chinese PPT decks.

## Recommended Division Of Labor

| Task | Primary workflow |
| --- | --- |
| systematic review protocol, coding sheet, meta-analysis logic | EvidenceForge |
| full-paper bilingual reading and figure-grounded translation | `nature-reader` |
| manuscript and high-impact journal prose | `nature-writing` / `nature-polishing` |
| Nature/CNS-style citation support | `nature-citation` |
| data availability and FAIR repository wording | `nature-data` |
| journal-club or paper-sharing slides | `nature-paper2ppt` |
| response to reviewers | `nature-response` |
| publication-ready figure style | `nature-figure`, with EvidenceForge method guardrails |

## Installation Commands

For Codex:

```powershell
python C:\Users\Vambr\.codex\skills\.system\skill-installer\scripts\install-skill-from-github.py `
  --repo Yuan1z0825/nature-skills `
  --path skills/nature-academic-search skills/nature-citation skills/nature-data `
         skills/nature-figure skills/nature-paper2ppt skills/nature-polishing `
         skills/nature-reader skills/nature-response skills/nature-writing
```

For Claude Code:

```text
/plugin marketplace add https://github.com/Yuan1z0825/nature-skills
/plugin install nature-skills
/reload-plugins
```

## Governance Rule

Do not vendor the full third-party repository into EvidenceForge by default. Prefer:

```text
install externally
link source
document how it complements EvidenceForge
adapt only small, audited workflow rules when needed
```

Reasons:

- avoids duplicated maintenance;
- keeps licensing and upstream attribution clear;
- avoids mixing large figure assets into this repository;
- lets EvidenceForge stay focused on evidence synthesis rather than becoming a general Nature-writing toolkit.

## Use Prompt

```text
Use EvidenceForge for the evidence-synthesis design and use nature-skills only for
publication-facing tasks such as paper reading, Nature-style polishing, citation support,
figures, Data Availability wording, reviewer response, or paper-to-PPT conversion.
Keep methodological claims grounded in the evidence-synthesis workflow.
```
