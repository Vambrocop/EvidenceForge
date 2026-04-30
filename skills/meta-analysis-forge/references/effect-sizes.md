# Effect Sizes

Method anchors: Cochrane effect-measure guidance, standard meta-analysis texts by Borenstein et al. and Hedges & Olkin, and practical R workflows such as Harrer et al.'s *Doing Meta-Analysis with R*.

## Common Metrics

- mean difference;
- standardized mean difference;
- log odds ratio;
- log risk ratio;
- log hazard ratio;
- correlation / Fisher z;
- regression coefficient;
- elasticity;
- log response ratio / percent change;
- incidence rate ratio;
- prevalence;
- diagnostic accuracy metrics.

## Extraction Fields

Minimum:

- study ID;
- effect ID;
- outcome;
- exposure/intervention;
- comparator;
- effect estimate;
- standard error or CI;
- sample size;
- model specification;
- adjusted/unadjusted status;
- follow-up time;
- subgroup or moderator.

## Harmonization Questions

Before conversion, ask:

- Are outcomes measuring the same construct?
- Are units comparable?
- Are estimands comparable?
- Are models adjusted for similar confounders?
- Are time horizons comparable?
- Are effects from experimental and observational designs mixed?

For ecology and agroecosystem reviews, keep response ratios transparent:

- preserve original treatment and comparator means;
- record whether the reported effect is `lnRR`, percent change, or a back-transformed value;
- use `100 * (exp(lnRR) - 1)` for percent-change interpretation only when the log response ratio is the coded metric;
- do not pool different outcome families such as yield, soil organic carbon, and emissions as one effect.

## Dependence

Multiple effect sizes may come from:

- several outcomes;
- multiple time points;
- multiple treatment arms;
- multiple models;
- overlapping samples;
- subgroup estimates.

Do not treat them as independent without a plan.

## Extraction Source Requirement

Every extracted estimate should point to a source:

- table number;
- figure number;
- page;
- appendix;
- dataset/code output;
- extraction note if the value was computed from reported statistics.

Do not use a number just because it appears plausible in an abstract or AI extraction.
