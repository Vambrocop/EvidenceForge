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
