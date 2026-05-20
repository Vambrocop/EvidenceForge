# Academic Research Suite Integration Note

External repositories:

- Claude Code version: https://github.com/Imbad0202/academic-research-skills
- Codex-native version: https://github.com/Imbad0202/academic-research-skills-codex

Local status:

```text
reviewed and installed into local Codex skills on 2026-05-20
installed skill: academic-research-suite
license: CC BY-NC 4.0
```

Codex usually needs a restart before newly installed skills appear in the active skill list.

## What It Is

Academic Research Suite (`ARS`) is a broad research-to-publication workflow suite. The Claude Code repository contains four main skills:

```text
deep-research
academic-paper
academic-paper-reviewer
academic-pipeline
```

The Codex-native repository packages these into one skill:

```text
academic-research-suite
```

It covers:

- Socratic research-question refinement;
- literature review and systematic review planning;
- paper outlining and drafting;
- citation and integrity checks;
- simulated peer review;
- end-to-end research-to-paper pipeline;
- experiment planning and validation.

## Why It Matters For EvidenceForge

EvidenceForge is narrower and more method-specific:

```text
systematic review
meta-analysis
umbrella review
evidence synthesis reproducibility
coding sheets
effect-size logic
high-value article paradigms
```

ARS is useful as a broader orchestration and mentoring layer, especially when the user starts with a vague idea rather than a defined review protocol.

## Recommended Division Of Labor

| Task | Primary workflow |
| --- | --- |
| vague topic, research-question narrowing | `academic-research-suite` Socratic / deep-research |
| systematic review protocol, PECO/PICO, coding schema | EvidenceForge |
| meta-analysis execution logic and effect-size validation | EvidenceForge / `meta-analysis-forge` |
| full paper outline and drafting | `academic-research-suite` or `nature-writing`, with EvidenceForge evidence ledger |
| manuscript peer-review simulation | `academic-research-suite` reviewer |
| high-impact article reproducibility template | EvidenceForge |
| final polishing, paper-to-PPT, Nature-style figures | `nature-skills` |

## Installation Commands

For Codex:

```powershell
python C:\Users\Vambr\.codex\skills\.system\skill-installer\scripts\install-skill-from-github.py `
  --repo Imbad0202/academic-research-skills-codex `
  --ref main `
  --path skills/academic-research-suite `
  --method git
```

For Claude Code:

```text
/plugin marketplace add Imbad0202/academic-research-skills
/plugin install academic-research-skills
```

## Governance Rule

Do not vendor the full ARS repositories into EvidenceForge by default.

Reasons:

- the license is CC BY-NC 4.0, so reuse is best kept as linked external integration unless terms are checked for the intended use;
- ARS is broad and can blur EvidenceForge's evidence-synthesis boundary;
- wholesale copying creates maintenance burden;
- EvidenceForge should preserve its own stricter meta-analysis and reproducibility rules.

Preferred approach:

```text
install externally
link source
use ARS for broad orchestration
use EvidenceForge for evidence-synthesis decisions
adapt only small, audited process rules when needed
```

## Use Prompt

```text
Use academic-research-suite to help narrow the research question and produce a staged research plan.
Then switch to EvidenceForge for the systematic-review protocol, coding sheet, effect-size logic,
and reproducibility checklist.
Do not let a broad writing pipeline override EvidenceForge's evidence-synthesis guardrails.
```
