# High-Value Paper Reproducibility Audit

## Study Identity

- Citation:
- DOI / URL:
- Journal:
- Domain:
- Why this paper is worth learning:
- Verdict: Readable only / Partially reproducible / Workflow reusable / Full reproduction candidate

## 1. Analysis-Form Fit Map

This is the most important section. It records what the paper actually did analytically, and whether each form fits the data.

| Analysis content | Data unit | Outcome family | Statistical/computational form | Why appropriate | Main output | Reuse value | Overclaim risk |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Summary verdict:

- Best-matched analysis form:
- Analysis form that is useful but exploratory:
- Analysis form that requires caution:
- Analysis form missing or underdeveloped:

Reusable rule:

```text

```

## 2. File And Repository Inventory

- Local folder:
- Main article:
- Supplementary files:
- Peer-review files:
- Data/code repository:
- Repository platform:
- Repository version:
- Raw data available:
- Processed data available:
- R/Python code available:
- README available:
- Session info / package versions available:
- Generated outputs available:

## 3. How The Paper Was Made

- Research question:
- Treatment/exposure:
- Control/comparator:
- Outcome families:
- Number of studies:
- Number of observations/effects:
- Search databases:
- Search date range:
- Inclusion rules:
- Exclusion rules:
- External covariate sources:

## 4. Data Table Structure

### Raw Or Extracted Data Tables

- File names:
- Row unit: study / effect / treatment / site / outcome / time point
- Key ID fields:
- Treatment/control fields:
- Mean/SD/n fields:
- Outcome fields:
- Moderator fields:
- External covariate fields:
- Shared-control or dependence fields:
- Quality/sensitivity flags:

### Reusable Schema Notes

```text
study_id:
effect_id:
shared_control_id:
outcome_family:
effect_size_type:
moderators:
external_covariates:
```

## 5. Effect-Size And Uncertainty Logic

- Effect-size metrics used:
- Which outcomes use each metric:
- Formula/source:
- Sampling variance or SE:
- Back-transformation:
- Missing SD/SE handling:
- Scale mismatch risks:
- Stock/flux/process separation:

## 6. `rma.mv` / Meta-Analysis Implementation

- R package/version:
- Main function:
- Effect column:
- Variance/VCV object:
- Model formula:
- Random-effects structure:
- Moderator formulas:
- Estimation method:
- Model comparison:
- Heterogeneity metrics:
- Prediction intervals:
- Publication-bias diagnostics:
- Sensitivity checks:

Relevant code snippets or file paths:

```r

```

## 7. Random Forest / ML Layer

- Package/version:
- Response variable:
- Predictors:
- Tuning parameters:
- Number of trees:
- Importance method:
- Validation/stability check:
- Output table/figure:
- Interpretation limit:

Relevant code snippets or file paths:

```r

```

## 8. PLS-PM / SEM-Family Path Model

- Package/version:
- Path-model type:
- Blocks / latent constructs:
- Manifest variables:
- Inner model:
- Outer model:
- Direct paths:
- Indirect paths:
- Model quality metrics:
- Interpretation limit:

Relevant code snippets or file paths:

```r

```

## 9. Peer-Review Lessons

- Reviewer-requested method changes:
- Effect-size corrections:
- Dependence/VCV corrections:
- Reproducibility requests:
- Causal-language corrections:
- Limitation wording:
- What to preempt in our own paper:

## 10. Reproducibility Gaps

- Missing data:
- Missing code:
- Ambiguous scripts:
- Package/version risks:
- Manual steps:
- Non-portable paths:
- Outputs not regenerated:
- What must be checked next:

## 11. Reusable Skill Extraction

- What should become a skill rule:
- What should become a coding-sheet field:
- What should become an R script template:
- What should become a reviewer checklist:
- What should not be copied blindly:

## 12. Prompts For Future Use

```text
Use this paper as a reproducibility template. Extract the data table schema,
effect-size logic, rma.mv model, random forest layer, PLS-PM/path-model layer,
and peer-review lessons. Separate what is stated in the article from what is
confirmed in the public code/data repository.
```
