# Meta-Analysis Coding Validation Rules

Use these checks before pooling.

## Required Fields

The minimal R script requires:

- `study_id`
- `effect_id`
- `effect_metric`
- `estimate`
- `se`

The full coding schema also expects source and design fields so that a human can audit extraction decisions.

## Pre-Pooling Checks

- One row should represent one extracted effect.
- `study_id + effect_id` should uniquely identify an effect.
- `estimate` and `se` must be numeric.
- `se` must be positive.
- `effect_metric` must be a single harmonized metric before pooling.
- `outcome` must represent a comparable construct.
- `dependency_group` should be filled when effects share a study, sample, outcome family, time point, or model.
- `risk_of_bias` must be traceable to a human appraisal.
- `extraction_source` must point to a page, table, figure, supplement, or dataset field.

## Stop Conditions

Do not run a pooled model when:

- effect metrics are mixed and unconverted;
- outcomes are conceptually incompatible;
- uncertainty cannot be recovered;
- included effects are mostly dependent and no dependence strategy is planned;
- risk-of-bias judgments are missing for a review that requires them;
- the coding sheet cannot trace effects back to source locations.

## Minimal Run Boundary

`scripts/run_meta_analysis.R` is intentionally minimal. It fits a random-effects model using `metafor` after basic checks. It does not:

- convert effect metrics;
- solve dependent effects;
- perform robust variance estimation;
- decide whether pooling is substantively appropriate;
- replace risk-of-bias or certainty assessment.
