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

EvidenceForge is currently best described as **v0.35 / v0.4-alpha**:

- it now has schemas, validators, golden examples, a minimal R script, effect-size helpers, and a PRISMA-style flow generator;
- it also has an IPD/mega-analysis reference and audit templates inspired by small-sample multi-site synthesis workflows;
- it is expanding the environmental branch with PLS/VIP environmental indicator audits, ecosystem-service relationship threshold ML audits, air-quality food-security co-benefit audits, biodiversity-stability climate-stress audits, soil-fauna carbon meta-analysis templates, urban heat DML, spatial causal-inference guardrails, agricultural irrigation optimization templates, and cryosphere ground-ice map-product audits;
- it now has high-value article reproducibility audits that prioritize analysis-form fit, data-table structure, `rma.mv`, random forest/BRT, PLS-PM/SEM-family models, peer-review lessons, and reusable skill extraction;
- it has a local meta-literature inventory with several strong case candidates, including Nature Communications potassium fertilization, ant-mediated soil carbon, agricultural diversification second-order meta-analysis, a Nature Medicine mega-analysis, and a Communications Psychology Bayesian meta-analysis;
- it still needs richer effect-size conversion, robust/multilevel model templates, PRISMA/report export polish, and real case studies before v1.0.

To reach **v0.5**, at least two or three representative case studies should be runnable or auditable end to end:

- one first-order treatment-control meta-analysis with open CSV/R code;
- one ecological meta-analysis with multilevel dependence, ML ranking, and path modeling;
- one second-order meta-analysis with overlap, quality, duration, and trade-off modeling.

The current recommended v0.5 case-study package is:

- potassium fertilization and yield/SOC, for a first-order treatment-control nutrient meta-analysis;
- riparian buffers and biodiversity, for an ecological meta-analysis where processed effect-size data and R code are public even when raw species-by-site data are protected;
- agricultural diversification, for second-order meta-analysis and trade-off modeling.

See `docs/v0.5-reproducible-case-study-candidates.md`.
