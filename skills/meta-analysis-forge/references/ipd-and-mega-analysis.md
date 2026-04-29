# IPD and Mega-Analysis

Use this reference when the evidence project can access participant-level, sample-level, or harmonized derived data across studies, rather than only published effect sizes.

## Key Distinctions

| Approach | Main input | Main question |
|---|---|---|
| Aggregate-data meta-analysis | Published or extracted effect sizes | What is the pooled effect across studies? |
| IPD meta-analysis | Individual participant-level data | What is the effect after harmonized modeling of participants and covariates? |
| Mega-analysis | Multiple original or harmonized datasets reprocessed through a common pipeline | What pattern appears after shared preprocessing, feature extraction, and hierarchical modeling? |

Mega-analysis is especially useful when single studies are small, methods vary, and results are fragmented. It is not automatically stronger than meta-analysis; it is stronger only when harmonization, data access, modeling, and uncertainty reporting are transparent.

## When To Consider Mega-Analysis

Consider a mega-analysis when:

- primary studies have small samples but compatible raw or derived data;
- preprocessing choices drive results;
- published effect sizes are not comparable enough;
- the field has fragmented or inconsistent findings;
- multiple sites or labs are willing to coordinate;
- the key outcome can be recomputed using a common feature definition;
- study-, site-, treatment-, platform-, cohort-, or protocol-level heterogeneity matters.

Do not use mega-analysis language when only published estimates are being pooled.

## Minimum Workflow

1. Build a dataset access and eligibility ledger.
2. Define the target estimand or feature family.
3. Harmonize raw or derived data formats.
4. Run a uniform preprocessing pipeline where possible.
5. Extract shared features using a fixed atlas, assay, endpoint, or measurement rule.
6. Record exclusions and quality-control failures at participant/session/sample level.
7. Model study/site/treatment/platform heterogeneity explicitly.
8. Report uncertainty with emphasis on subgroup sample sizes.
9. Run pipeline sensitivity checks.
10. Separate shared cross-study patterns from subgroup- or treatment-specific claims.

## Small-Sample Logic

Small studies can still be valuable when they are treated as uncertain evidence, not as individually decisive proof.

Good small-sample mega-analysis practice:

- pools information across sites while preserving site labels;
- uses hierarchical or partial-pooling logic;
- reports posterior or interval uncertainty;
- weakens subgroup claims when subgroup data are sparse;
- treats exploratory contrasts as hypothesis-generating;
- avoids claiming that larger combined N removes design bias.

## Harmonization Ledger

Track:

- study/site ID;
- data owner and access status;
- participant/sample count before and after exclusions;
- intervention/exposure/treatment;
- comparator/placebo/control;
- timing;
- measurement platform;
- preprocessing pipeline;
- feature extraction rule;
- quality-control criteria;
- reason for unavailable or excluded data;
- code availability;
- data-sharing restrictions.

Use `templates/mega-analysis-dataset-inventory.csv`.

## Modeling Guardrails

- Model study/site effects instead of pretending all observations are exchangeable.
- Model treatment/drug/platform effects when cross-category claims are made.
- Do not overinterpret subgroup estimates with tiny sample sizes.
- Do not treat uniform preprocessing as a cure for confounding or design heterogeneity.
- Do not erase protocol differences such as fixed-order designs, missing placebo controls, or unblinding risk.
- Report pipeline sensitivity when preprocessing choices are known to influence results.

## Reporting Pattern

A strong mega-analysis report should distinguish:

- common cross-study signature;
- treatment/subgroup-specific variation;
- pipeline sensitivity;
- data access limits;
- quality-control exclusions;
- uncertainty and posterior overlap;
- claims that remain underpowered or exploratory.

Use `templates/mega-analysis-audit-report.md`.

## Example Inspiration

Girn et al. (2026), *An international mega-analysis of psychedelic drug effects on brain circuit function*, integrated 11 resting-state fMRI datasets across five psychedelic drug conditions from multiple countries and continents. The study is useful as a workflow example because it emphasizes community data coordination, uniform preprocessing, feature extraction, Bayesian hierarchical modeling, pipeline sensitivity, and uncertainty-aware interpretation under small subgroup samples.

The lesson for EvidenceForge is general: small samples can contribute to evidence synthesis when they are placed inside a harmonized, transparent, and uncertainty-first framework.
