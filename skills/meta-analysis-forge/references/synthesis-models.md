# Synthesis Models and Diagnostics

Method anchors: Cochrane meta-analysis chapters, standard meta-analysis textbooks, and R implementations such as `metafor`, `meta`, `clubSandwich`, and `robumeta`.

## Model Choice

**Fixed effect**: assumes one common true effect. Use rarely and only with clear justification.

**Random effects**: assumes true effects vary across studies. Often appropriate for heterogeneous scientific fields.

**Multilevel meta-analysis**: handles nested or dependent effects, such as multiple outcomes per study.

**Robust variance estimation**: useful when dependence exists but the covariance structure is unknown.

**Meta-regression**: explores moderators; usually observational and vulnerable to ecological bias.

**Bayesian hierarchical models**: useful for complex dependence or sparse evidence, with transparent priors.

## Heterogeneity

Report:

- tau2;
- I2, with caution;
- prediction interval;
- influence diagnostics;
- leave-one-out sensitivity.

Interpretation should focus on real-world variation, not just statistical significance.

## Publication Bias

Consider:

- funnel plot;
- Egger-type tests;
- selection models;
- p-curve or p-uniform where appropriate;
- trim-and-fill only as sensitivity;
- grey literature inclusion.

Avoid overinterpreting tests when the number of studies is small.

## Reporting Minimum

Report:

- model choice and why;
- estimator/software if known;
- number of studies and effects;
- whether effects are independent;
- pooled estimate and uncertainty;
- heterogeneity and prediction interval where possible;
- sensitivity analysis;
- limitations and certainty caveat.
