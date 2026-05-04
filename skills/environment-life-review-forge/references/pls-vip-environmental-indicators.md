# PLS/VIP Environmental Indicators

Use this reference when an environmental, ecological, agricultural, or life-science study uses partial least squares regression to link an outcome indicator to several correlated predictors. Common outcomes include NDVI, vegetation productivity, soil organic carbon, soil quality, biodiversity indices, ecosystem-service indicators, water-quality indices, pollutant response, crop performance, or climate-sensitive biological endpoints.

## Why It Matters

PLS is attractive in environmental studies because climate, soil, hydrology, vegetation, and management predictors are often correlated, while long time series or field samples may be limited. VIP rankings can help screen which variables contribute most to a fitted PLS prediction.

The risk is overinterpretation: VIP is not a causal effect, not a p-value, and not automatically a mechanism.

## Minimum Method Details

- Outcome variable, unit, and measurement window.
- Predictor list, units, timing, and ecological rationale.
- Sample size, years/sites, spatial or temporal dependence.
- Missing-data handling.
- Standardization/scaling.
- Number of PLS components tested and selected.
- Cross-validation design, including whether folds respect years, sites, plots, or spatial blocks.
- Performance metrics such as RMSEP, R2, Q2, or external prediction error.
- VIP values and threshold rule, commonly VIP >= 1 as a screening convention.
- Coefficient direction or loading direction for interpretation.
- Residual trend, autocorrelation, and influential-observation checks.

## Interpretation Rules

Acceptable language:

- "The PLS model ranked precipitation and humidity as high-VIP predictors of NDVI variation."
- "VIP suggests these predictors contributed strongly to the fitted predictive components."
- "The result motivates ecological interpretation and robustness checks."

Avoid:

- "Precipitation caused NDVI change" unless there is a separate causal design.
- "VIP proves mechanism."
- "VIP > 1 means statistically significant."
- "The top VIP variable is the only important driver."

## Audit Questions

- Was component count chosen before the VIP table was interpreted?
- Was the sample large enough for the number of predictors and components?
- Were variables scaled?
- Was random CV inappropriate because the data are a time series or spatial panel?
- Are correlated variables interpreted as a predictor family when needed?
- Is direction shown, not just importance?
- Is there a simpler baseline model for comparison?

## Prompt Skeleton

```text
Use environment-life-review-forge to audit this PLS/VIP environmental indicator model.

Outcome:
Predictors:
Sample size and years/sites:
PLS components:
Validation design:
VIP table:
Coefficient directions:

Return:
1. environmental indicator model card;
2. component-selection and validation audit;
3. VIP interpretation with ecological caution;
4. overclaiming risks;
5. manuscript wording that avoids causal overreach.
```
