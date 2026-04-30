# Food-Waste Geospatial ML Forecasting

Use this reference for studies that forecast food waste, organic waste, municipal solid waste fractions, or recoverable feedstock using geospatial analytics and machine learning.

## Running Example

Uen and Rodriguez (2026), "Geospatial analytics and machine learning for forecasting county-level food waste in U.S. Retail markets," Resources, Conservation and Recycling, is a useful model article for this pattern.

Core extractable facts:

- article type: full length article;
- journal: Resources, Conservation and Recycling;
- volume/article: 231, 108906;
- publication date: 30 May 2026;
- DOI: https://doi.org/10.1016/j.resconrec.2026.108906;
- authors visible in article metadata: Tinn-Shuan Uen and Luis F. Rodriguez;
- target: annual county-level food-waste generation in the United States;
- use case: waste collection planning, logistics optimization, waste-to-bioproduct systems, and circular bioeconomy development;
- predictor families: demographics, agricultural sales, grocery stores, income, food expenditures, retail sales, restaurants, and social-program access;
- algorithms: multiple linear regression, k-nearest neighbors, support vector regressor, random forest, gradient boosting, adaptive boosting, and deep neural network;
- best-reported model in abstract: support vector regressor with R2 = 0.837, MAE = 792 metric tons, and RMSE = 3,385 metric tons;
- other reported model range: R2 about 0.825-0.844, MAE 792-987 metric tons, RMSE 3,385-5,608 metric tons;
- prediction was more accurate for counties generating less than 100,000 metric tons per year;
- important drivers reported: number of stores and restaurants, population; conclusion also highlights TRS, POP, CS, SWS, and REDM as important features.

Source links:

- ScienceDirect article page: https://doi.org/10.1016/j.resconrec.2026.108906
- Article landing page: https://www.sciencedirect.com/science/article/abs/pii/S0921344926001308

## Why This Pattern Matters

County-level food-waste prediction is a bridge between food-system evidence and infrastructure planning. It turns scattered demographic, retail, and socioeconomic predictors into spatial estimates that can support:

- waste collection planning;
- facility siting;
- anaerobic digestion and waste-to-bioproduct network design;
- circular bioeconomy feasibility screening;
- prioritization of counties for measurement, policy, or intervention.

The model is useful only if spatial scale, target definition, and deployment use are clear.

## Workflow

1. Define the waste stream: retail food waste, household food waste, organic fraction of MSW, total food waste, or recoverable feedstock.
2. Define the spatial unit: county, city, census tract, store catchment, facility service area, or supply-chain region.
3. Identify the target estimate source: measured waste, imputed estimate, EPA/state dataset, survey, or proxy.
4. Map predictor families: demographics, retail structure, restaurants, income, food expenditures, agricultural sales, policy access, and social-program variables.
5. Audit preprocessing: missingness, transformations, normalization, outliers, skew, and high-waste counties.
6. Compare model families against simple baselines.
7. Validate spatial generalization:
   - random split for internal performance;
   - leave-region-out for geographic transfer;
   - spatial block cross-validation for autocorrelation;
   - outlier/large-county analysis;
   - calibration by waste-volume class.
8. Audit feature importance without causal overclaiming.
9. Translate predictions into logistics or circular-bioeconomy decisions only after checking collection, contamination, transport, policy, and facility constraints.
10. Report uncertainty and where new measurement campaigns should be prioritized.

## Minimum Extraction Fields

- study_id;
- waste_stream;
- target_unit;
- spatial_unit;
- geography;
- year_or_period;
- target_source;
- predictor_family;
- feature_name;
- feature_source;
- model_family;
- tuning_method;
- validation_method;
- spatial_validation;
- performance_metric;
- performance_value;
- high_waste_performance;
- feature_importance_method;
- deployment_use;
- feasibility_constraints;
- data_code_availability;
- source_anchor.

## Validation Guardrails

Match validation to the intended use:

- **County prioritization**: require performance by county size and waste-volume class.
- **Facility siting**: require distance, transport cost, contamination, facility capacity, and policy constraints.
- **National mapping**: require spatial autocorrelation and regional transfer checks.
- **Policy targeting**: require uncertainty intervals and equity/vulnerability context.
- **Feedstock supply**: distinguish generated waste from separately collected, clean, accessible waste.

## Leakage And Bias Checks

Flag:

- predictors that are direct components of the target estimate;
- random splits that place adjacent or similar counties in train and test;
- urban-heavy training data that underperform in rural counties;
- high-waste outliers hidden by average metrics;
- retail sales or store counts interpreted causally without design support;
- national/state estimates downscaled to counties without reporting uncertainty.

## Interpretation Rules

- Forecasted food waste is a planning estimate, not a direct measurement.
- Feature importance is model dependence, not causal proof.
- County-level accuracy does not imply facility-level or route-level accuracy.
- High R2 can coexist with poor performance for the counties most important for facility planning.
- Waste-to-bioproduct potential requires additional techno-economic, logistics, and contamination analysis.
