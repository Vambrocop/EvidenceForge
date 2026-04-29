# Version Roadmap

EvidenceForge uses early-stage version labels to describe maturity. These are product-development labels, not claims about methodological completeness.

## v0

Concept scaffold.

- Skills exist.
- Scope is clear.
- Guardrails are explicit.
- Methods are referenced.
- No real execution path is required.

Meaning: the project idea is worth testing.

## v0.1

Method scaffold.

- README and positioning are clear.
- Skills are split by task.
- References and templates support progressive disclosure.
- Companion boundary with EmpiriForge is clear.

Meaning: the project can guide research planning and audit conversations.

## v0.2

Minimal executable spine.

- Machine-readable coding schema.
- Example coding sheet.
- Minimal `metafor` script.
- Machine-readable screening log schema.
- Golden examples.

Meaning: the project can demonstrate a small protocol-to-data-to-output loop.

## v0.3

Validation layer.

- Coding-sheet validator.
- Screening-log validator.
- R environment notes.
- GitHub Actions checks.
- Effect-size helper functions.
- IPD/mega-analysis templates for harmonized data integration.

Meaning: the project can reject some bad inputs before analysis.

## v0.4

Reporting utilities.

- PRISMA-style flow generator.
- More golden examples.
- Clearer output/report templates.
- Better executable documentation.

Meaning: the project can produce auditable review artifacts, not just advice.

## v0.5

Usability release.

- Installation instructions tested on common platforms.
- Example workflows run end to end.
- Basic release notes.
- Stable folder structure.
- More realistic case examples.

Meaning: the project is ready for broader trial use.

## v1.0

Stable public version.

- Core skill interfaces are stable.
- Deterministic scripts have tests.
- Example workflows are reproducible.
- Documentation explains boundaries clearly.
- The project is safe to recommend as a serious evidence-synthesis workflow toolkit.

Meaning: the project is no longer only an experimental scaffold.

## Current Direction

EvidenceForge is moving from v0.2 toward v0.4:

- it now has schemas, validators, golden examples, a minimal R script, effect-size helpers, and a PRISMA-style flow generator;
- it also has an IPD/mega-analysis reference and audit templates inspired by small-sample multi-site synthesis workflows;
- it still needs richer effect-size conversion, robust/multilevel model templates, PRISMA/report export polish, and real case studies before v1.0.
