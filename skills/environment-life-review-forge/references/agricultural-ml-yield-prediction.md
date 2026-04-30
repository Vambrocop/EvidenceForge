# Agricultural ML Yield Prediction

Use this reference for studies that predict crop yield by integrating meteorological, breeding, genomic, phenotypic, soil, management, remote-sensing, or field-trial data with machine-learning models.

## Running Example

Wang et al. (2025), "Integrating meteorological and breeding data to predict maize yields using machine learning algorithms," Frontiers in Plant Science, is a useful model article for this pattern.

Core extractable facts:

- article type: Original Research;
- journal/section: Frontiers in Plant Science, Plant Abiotic Stress;
- published: 21 November 2025;
- DOI: https://doi.org/10.3389/fpls.2025.1722068;
- crop: maize hybrids;
- region: Huang-Huai-Hai (HHH) Plain, China;
- field-trial scope: 64 locations, 57 maize hybrids, 2016-2019;
- trial design: randomized block with three replications;
- breeding input: hybrid breeding values estimated through BLUP with `lme4` in R;
- meteorological input: 19 time-series variables from weather stations, averaged over the hybrid growth period;
- model families: Random Forest, XGBoost, Support Vector Regression, and Gaussian Process Regression;
- tuning/evaluation: grid search, 10-fold cross-validation, and 80/20 train-test split with 1,676 training and 420 test samples;
- best model: Random Forest;
- reported test performance: R2 = 0.64, RMSE = 1010.59 kg/ha, MAE = 743.89 kg/ha, RRMSE = 10.32%, MAPE about 8.25-8.3%;
- important predictors: breeding value, downward longwave radiation flux, sunshine duration, precipitation deficit, potential evapotranspiration, and surface-level wind speed;
- future forecast window: 2025-2054, with reported highest predicted yield in 2041 and lowest in 2033;
- data availability: raw data available from authors without undue reservation.

Source links:

- Article: https://doi.org/10.3389/fpls.2025.1722068
- Frontiers full text: https://www.frontiersin.org/journals/plant-science/articles/10.3389/fpls.2025.1722068/full
- PMC record: https://pmc.ncbi.nlm.nih.gov/articles/PMC12679659/

## Why This Pattern Matters

This pattern is not a meta-analysis. It is an evidence-and-model audit for prediction under genotype-by-environment complexity.

The key question is:

```text
Does the model predict yield for the deployment situation claimed: new plots, new sites, new years, new genotypes, future weather, or only held-out random rows from the same trial database?
```

## Workflow

1. Define the prediction target: crop, yield unit, harvest condition, genotype or cultivar specificity.
2. Map the trial structure: site, year, genotype, replicate, plot, management, and region.
3. Separate input families: breeding/genomic, weather, soil, management, remote sensing, and historical yield.
4. Verify temporal aggregation: which weather window is known before prediction, and which would leak future information.
5. Define the claim: current-season forecasting, genotype recommendation, site adaptation, future-climate projection, or breeding selection.
6. Choose validation that matches the claim:
   - random row split for internal performance;
   - leave-one-year-out for temporal generalization;
   - leave-one-site-out for spatial generalization;
   - leave-one-genotype-out for new-hybrid deployment;
   - nested cross-validation for tuning without leakage;
   - external validation for policy or farmer-facing claims.
7. Compare model families and a simple baseline.
8. Audit feature importance and PDP/SHAP claims as model explanations, not causal mechanisms.
9. Check data/code availability and environment reproducibility.
10. Report limits: sample size, trial representativeness, weather-station coverage, genotype scope, management assumptions, and future-scenario extrapolation.

## Minimum Extraction Fields

- study_id;
- crop;
- region;
- years;
- site_count;
- genotype_count;
- sample_count;
- trial_design;
- target_yield_unit;
- breeding_input;
- weather_input;
- soil_input;
- management_input;
- remote_sensing_input;
- model_family;
- tuning_method;
- validation_split;
- grouped_validation;
- performance_metric;
- test_performance;
- interpretability_method;
- forecast_horizon;
- data_availability;
- source_anchor.

## Validation Guardrails

Match validation to the intended use:

- **Farmer recommendation**: require site-year robustness and uncertainty, not just random rows.
- **Breeder selection**: require genotype-aware validation and careful BLUP leakage checks.
- **Climate adaptation forecast**: require explicit future weather/climate source and extrapolation diagnostics.
- **General crop-yield model**: require multiple regions, years, cultivars, and external validation.
- **Operational tool**: require data latency, missingness handling, and retraining plan.

## Leakage Checks

Flag:

- the same genotype appearing in train and test when claiming new-genotype prediction;
- the same site-year environment appearing in both train and test;
- weather variables averaged over a growth period not available at prediction time;
- BLUP breeding values estimated using yield data that overlap with the test target;
- hyperparameter tuning performed before train-test separation;
- future forecasts generated without independent future weather or climate inputs.

## Interpretation Rules

- Feature importance ranks predictors inside a trained model; it is not agronomic causality.
- PDPs describe model response under assumptions and may be unreliable outside the observed feature domain.
- High MAPE performance does not guarantee transfer to new climates or management systems.
- A practical cultivar recommendation should include uncertainty and region-specific validity.
- "Data available on request" is weaker than deposited data and should be marked as a reproducibility limitation.
