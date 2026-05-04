# Environmental Causal Machine Learning

Use this reference for environmental and life-science studies that combine high-dimensional exposure data, predictive ML, interpretability, and causal-effect estimation.

## Running Example

Zhao et al. (2026), "Causal machine learning with interpretability deciphers the impact of micropollutants and socioeconomic factors on ARGs in Chinese urban drinking water," Environmental Research, is a useful model article for this pattern.

Core extractable facts:

- journal: Environmental Research;
- volume/article: 295, 123916;
- DOI: https://doi.org/10.1016/j.envres.2026.123916;
- domain: drinking-water safety, antimicrobial resistance, environmental pollution, One Health;
- observational unit: drinking-water samples/regions from 67 Chinese cities or regions;
- outcomes: ARGs and integron genes in urban drinking-water networks;
- exposure families: 97 micropollutants, including antibiotics, PAHs, PCBs, PFASs, and OPEs;
- contextual covariates: water-treatment processes, urban development, geography, GDP, and population density;
- predictive layer: H2O AutoML to model high-dimensional ARG-pollutant relationships;
- causal layer: double machine learning (DML) to estimate causal or conditional treatment effects;
- interpretability layer: interpretable ML used to identify and explain drivers;
- reported pattern: antibiotics and PAHs promoted ARG proliferation, PCBs and advanced urban development were reported as suppressive, and GDP showed a nonlinear U-shaped association;
- genetic pathway cue: integron genes such as `intI1` and `intI2` are treated as dissemination or mediation hubs.

Source links:

- Article: https://doi.org/10.1016/j.envres.2026.123916
- ScienceDirect page: https://www.sciencedirect.com/science/article/pii/S0013935126002446

## Urban Heat DML Extension

Use this extension for papers or review questions about urban heat, heatwaves, cooling interventions, greening, thermal exposure, and heat-related behavior or health outcomes.

The reusable distinction is:

```text
Ordinary ML asks whether the model can predict heat, activity, or risk.
DML asks whether a specific exposure or intervention has a net effect after adjusting for high-dimensional confounders.
```

Typical elements:

- treatment/exposure: heatwave event, green-space fraction, NDVI, impervious surface, tree shade, cool roof, ventilation corridor, policy adoption, or cooling infrastructure;
- outcome: land surface temperature (LST), surface urban heat island intensity (SUHI), air temperature, heat exposure, nighttime lights, nighttime activity, energy demand, mortality, morbidity, or resilience indicator;
- controls: weather, seasonality, urban morphology, building density or height, road network, land cover, albedo, population, income, economic activity, mobility, infrastructure, and geography;
- estimand: ATE, ATT, CATE, direct effect, mediated effect, or event-time effect;
- nuisance models: Lasso, random forest, boosting, neural network, MLP, GNN, or ensemble learners;
- design checks: DAG, treatment timing, cross-fitting, overlap, cluster or spatial bootstrap, panel structure, spillovers, and hidden-confounding sensitivity.

Running-example family:

- Debnath et al. (2025), "Heatwave increases nighttime light intensity in hyperdense cities of the Global South: a double machine learning study," uses DML to estimate heatwave effects on nighttime-light radiance in Delhi, Guangzhou, Cairo, and Sao Paulo while controlling local climatic confounding.
- A 2026 spatial-DML urban greening study in Sustainable Cities and Society uses polygon-year panels and spatial nuisance learning to study city-core greening, heat resilience, and nighttime-light economic activity.

Useful source links:

- Heatwave DML article: https://pmc.ncbi.nlm.nih.gov/articles/PMC12590167/
- Heatwave DML preprint: https://arxiv.org/abs/2503.00557
- Spatial urban greening DML article: https://doi.org/10.1016/j.scs.2026.107418

## Why This Pattern Matters

This pattern is not a systematic review and not a standard prediction study. It is a causal-ML environmental exposure workflow.

The key question is:

```text
Can high-dimensional pollutant, microbial, infrastructure, and socioeconomic data support a credible causal claim about environmental drivers of a public-health endpoint?
```

## Workflow

1. Define the causal question before modeling: exposure, outcome, unit, time window, and estimand.
2. Separate outcome variables from exposures, mediators, proxies, confounders, and post-treatment variables.
3. Build a data dictionary for pollutant classes, ARG genes, integron genes, treatment-process variables, socioeconomic variables, and geography.
4. Use predictive ML or AutoML for pattern discovery, missingness inspection, and nonlinear screening.
5. Treat interpretability outputs such as feature importance, SHAP, or PDP as model explanations, not causal evidence.
6. Use DML, causal forest, or another causal estimator only after stating the identification assumptions.
7. Check overlap, treatment prevalence, spatial clustering, and covariate balance.
8. Cross-fit nuisance models where the estimator requires it.
9. Report CATE/heterogeneity as conditional evidence and separate it from policy targeting.
10. Run robustness checks: alternative feature sets, pollutant-class grouping, geography controls, treatment-process controls, and hidden-confounding sensitivity.
11. Interpret environmental mechanisms with domain knowledge: co-selection, integron-mediated spread, treatment-process confounding, and socioeconomic proxies.
12. For urban heat studies, audit spatial autocorrelation, neighborhood spillovers, temporal aggregation, event definitions, and whether nighttime-light or activity proxies really match the claimed outcome.

## Extraction Fields

- citation;
- DOI;
- environmental domain;
- unit of observation;
- sampling frame;
- outcome genes or biomarkers;
- exposure classes;
- socioeconomic covariates;
- treatment-process variables;
- temporal order;
- causal estimand;
- predictive model family;
- causal estimator;
- nuisance models;
- cross-fitting plan;
- interpretability method;
- validation method;
- spatial-dependence handling;
- hidden-confounding sensitivity;
- policy claim;
- data/code availability.

## Interpretation Rules

- AutoML accuracy shows predictive signal, not causal identification.
- DML reduces nuisance-estimation bias but does not remove unmeasured confounding by itself.
- CATE estimates need overlap and credible pre-treatment covariates.
- ARG-to-ARG "causal" language should be treated carefully; it may represent co-selection, co-occurrence, or shared mobile genetic elements rather than direct intervention effects.
- Socioeconomic variables can be proxies for infrastructure, treatment quality, monitoring intensity, or industrial activity.
- Mechanistic claims about micropollutants and ARG proliferation need biological plausibility and sensitivity checks.
- Policy recommendations should distinguish monitoring priority, risk assessment, and intervention feasibility.
- In urban heat studies, do not treat SHAP, PDP, or variable importance as evidence that greening, shade, or cool roofs causally reduce heat without a credible causal design.
- In spatial DML, do not assume independence across polygons, neighborhoods, or stations; require clustered or spatially aware inference when dependence is plausible.
- Heatwave treatment definitions should state threshold, duration, lag, season, and city-specific baseline.
