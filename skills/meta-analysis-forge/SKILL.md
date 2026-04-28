---
name: meta-analysis-forge
description: Designs and audits first-order meta-analyses of primary studies. Use for effect-size extraction, effect-size harmonization, fixed/random/multilevel models, robust variance estimation, heterogeneity, prediction intervals, meta-regression, publication-bias diagnostics, sensitivity checks, coding sheets, and reproducible meta-analysis reports.
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

Load:

- `references/effect-sizes.md` for effect metrics and extraction.
- `references/synthesis-models.md` for model choice and diagnostics.
- `references/meta-analysis-quality-gates.md` for pre-pooling checks.

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

## Output Modes

### Coding Sheet

Use `templates/coding-sheet.md`.

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

### Audit

Flag:

- incompatible outcomes;
- mixed effect metrics without conversion;
- missing uncertainty;
- multiple effects treated as independent;
- overuse of I2 without prediction interval;
- meta-regression overclaiming;
- publication-bias tests with too few studies.

## Guardrails

- Do not invent effect sizes.
- Do not pool effects solely because they are numerically available.
- Do not interpret meta-regression causally unless design supports it.
- Do not ignore within-study dependence.
- Do not treat a high pooled N as proof of high evidence quality.
- Do not use vote-counting as a substitute for effect-size synthesis.
