---
name: meta-analysis-forge
description: Designs and audits first-order meta-analyses of primary studies. Use for effect-size extraction, effect-size harmonization, fixed/random/multilevel models, robust variance estimation, heterogeneity, prediction intervals, meta-regression, publication-bias diagnostics, sensitivity checks, coding sheets, reproducible meta-analysis reports, ecological meta-analysis, ecological meta-analysis plus random forest or path modeling, soil-carbon meta-analysis, stock-versus-flux outcome separation, and trait-mediated moderator design.
---

# Meta-Analysis Forge

Use this skill when evidence synthesis requires statistical pooling of primary-study effects.

## Core Principle

A meta-analysis is valid only when the effect sizes being combined are conceptually and statistically comparable enough for the target inference.

Separate:

- effect-size extraction;
- effect-size conversion;
- dependence among effects;
- model choice;
- heterogeneity interpretation;
- publication-bias diagnostics;
- substantive conclusion.

## Intake

Identify:

- outcome construct;
- effect-size metric;
- standard error, confidence interval, p-value, or sample size availability;
- number of studies;
- multiple effects per study;
- study designs;
- expected heterogeneity;
- moderators;
- field norms.
- whether raw, participant-level, sample-level, or harmonized derived data are available.

Load:

- `references/effect-sizes.md` for effect metrics and extraction.
- `references/soil-fauna-carbon-meta.md` when the project pools ecological effects on both carbon stocks and carbon fluxes and needs trait or climate moderators without collapsing incompatible outcome families.
- `references/ecological-meta-ml-path-model-paradigm.md` when the project combines meta-analysis, mixed-effects meta-regression, random forest variable ranking, and PLS-PM/SEM-family path modeling.
- `references/high-value-paper-reproducibility-audit.md` when a strong published meta-analysis should become a reusable template and the task requires checking code, data-table structure, `rma.mv`, random forest, PLS-PM/SEM-family modeling, and reproducibility.
- `references/ipd-and-mega-analysis.md` when the task involves individual participant data, multi-site raw/derived data harmonization, small-sample dataset integration, or mega-analysis.
- `references/synthesis-models.md` for model choice and diagnostics.
- `references/meta-analysis-quality-gates.md` for pre-pooling checks.
- `templates/coding-schema.csv` and `templates/validation-rules.md` for machine-readable coding-sheet structure and validation.
- `scripts/validate_coding_sheet.py` before statistical execution.
- `scripts/effect_size_helpers.R` for transparent mechanical conversions during extraction.
- `scripts/run_meta_analysis.R` only after coding validity and pooling appropriateness have been checked.
- `scripts/install_r_packages.R` when setting up the minimal R environment.

## Workflow

1. Define the effect-size family.
2. Build the coding sheet.
3. Convert or preserve metrics with justification.
4. Identify dependence: multiple outcomes, time points, samples, or models per study.
5. Pass the quality gates before pooling.
6. Choose model: fixed, random, multilevel, robust variance, Bayesian, or narrative synthesis.
7. Report heterogeneity: tau2, I2, prediction interval.
8. Assess small-study effects or publication bias when feasible.
9. Run sensitivity checks.
10. Write interpretation with limits.

For IPD or mega-analysis, first build a dataset inventory, harmonization plan, quality-control ledger, and study/site heterogeneity model before any pooled interpretation.

## Output Modes

### Coding Sheet

Use:

- `templates/coding-sheet.md` for a human-readable table.
- `templates/coding-schema.csv` for field definitions.
- `templates/example-coding-sheet.csv` for a minimal machine-readable example.

### Analysis Plan

```text
Effect-size metric:
Inclusion for pooling:
Model:
Dependence handling:
Heterogeneity:
Bias diagnostics:
Sensitivity checks:
Software:
Interpretation limits:
```

### Minimal R Run

Use `scripts/run_meta_analysis.R` for a small reproducible demonstration when the coding sheet has one harmonized effect metric and valid standard errors.

```text
Input CSV:
Output directory:
Effect metric:
Pre-pooling checks passed:
Known limits:
```

### Validation and Conversion

Use `scripts/validate_coding_sheet.py` to check required fields, numeric estimates, positive standard errors, duplicate effect IDs, and mixed effect metrics.

Use `scripts/effect_size_helpers.R` only for transparent mechanical helpers such as CI-to-SE, log-ratio transforms, Fisher z, approximate SMD SE, and lnROM. Record formulas and assumptions in the coding sheet notes.

### IPD / Mega-Analysis

Use:

- `references/ipd-and-mega-analysis.md` for workflow and guardrails.
- `templates/mega-analysis-dataset-inventory.csv` for data access and harmonization.
- `templates/mega-analysis-audit-report.md` for audit output.

### Audit

Flag:

- incompatible outcomes;
- mixed effect metrics without conversion;
- missing uncertainty;
- multiple effects treated as independent;
- overuse of I2 without prediction interval;
- meta-regression overclaiming;
- publication-bias tests with too few studies.

### Ecological Meta + ML + Path Model

Use `templates/ecological-meta-ml-path-model-audit.md` when a meta-analysis combines pooled effects, moderator testing, machine-learning driver ranking, and a path model or SEM-family diagram.

```text
Meta-analysis layer:
ML layer:
Path-model layer:
Effect-size families:
Dependence plan:
Main reuse lesson:
Main overclaim risk:
```

### High-Value Paper Reproducibility Audit

Use `templates/high-value-paper-reproducibility-audit.md` when the user wants to learn from a strong article, especially a Nature Communications or similar paper with public data/code. Do not stop at a paper summary.

Extract:

- file and repository inventory;
- data table structure;
- effect-size and uncertainty logic;
- `metafor::rma.mv()` implementation;
- shared-control VCV or other dependence handling;
- random forest or machine-learning layer;
- `plspm`, PLS-PM, PLS-SEM, or other path-model layer;
- peer-review lessons;
- reproducibility gaps;
- reusable skill rules.

```text
Article logic:
Data table structure:
Effect-size logic:
rma.mv / dependence implementation:
Random forest layer:
PLS-PM / path-model layer:
Reproducibility verdict:
Reusable rule:
```

## Guardrails

- Do not invent effect sizes.
- Do not pool effects solely because they are numerically available.
- Do not interpret meta-regression causally unless design supports it.
- Do not interpret random-forest importance or PLS-PM paths causally unless the design supports it.
- Do not ignore within-study dependence.
- Do not treat a high pooled N as proof of high evidence quality.
- Do not use vote-counting as a substitute for effect-size synthesis.
- Do not treat the minimal R script as a full meta-analysis pipeline; it does not solve effect conversion, dependence, or certainty assessment.
- Do not run effect-size helper conversions without preserving original reported values and source anchors.
- Do not call a project a mega-analysis unless raw, participant-level, sample-level, or harmonized derived data are reprocessed or remodeled under a common framework.
- Do not call a high-value paper reproducible until its public code/data files, data schema, package versions, and model scripts have been inspected.
