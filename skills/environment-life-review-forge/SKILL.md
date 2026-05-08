---
name: environment-life-review-forge
description: Adapts evidence synthesis workflows for environmental, ecological, biomedical, and life-science questions. Use for PECO/PICO frameworks, exposure-outcome reviews, ecological heterogeneity, dose-response evidence, risk-of-bias planning, environmental indicators, NDVI or vegetation-index models, partial least squares regression, PLS VIP audits, ecosystem-service relationships, ESR synergy/trade-off mapping, interpretable machine learning, GWR/XGBoost spatial modeling, threshold-oriented ecological management, optimal interval identification, air pollution crop-yield models, ozone/aerosol food-security co-benefits, SIF-based crop productivity, soil biodiversity, aridity gradients, ecosystem stability, climate-stress moderation, soil fauna meta-analysis, ant-mediated carbon cycling, SOC and CO2 dual-outcome synthesis, organism/tissue/time-scale coding, wetland methane scaling, small-patch geospatial upscaling, cryosphere or permafrost evidence products, near-surface ground ice mapping, geospatial environmental maps, spatial autocorrelation audits, map uncertainty audits, food-system environmental nexus reviews, food-waste geospatial ML forecasting, agroecosystem nutrient meta-analysis, crop-yield machine-learning prediction, environmental causal machine learning, double machine learning, spatial DML, urban heat causal inference, interpretable exposure-response modeling, genotype-environment modeling, agricultural irrigation optimization, brackish-water irrigation, GAM or NSGA-II trade-off modeling, environmental scenario modeling, land-use optimization, Pareto-frontier trade-off synthesis, policy trade-off synthesis, system-hub environmental variables, nitrogen-SDG coupling, safe-boundary synthesis, hotspot-layer identification, and domain-specific systematic review protocols.
---

# Environment Life Review Forge

Use this skill for environmental, ecological, biomedical, and life-science systematic reviews where exposure, organism/population, outcome, context, and study design need careful domain adaptation.

## Core Principle

Domain structure matters. The same effect-size workflow may be misleading if exposure windows, species, tissues, endpoints, geography, or measurement platforms are not comparable.

## Intake

Identify:

- domain: environment, ecology, toxicology, epidemiology, life science, molecular biology, public health;
- framework: PECO or PICO;
- population or organism;
- exposure or intervention;
- comparator;
- outcomes/endpoints;
- study design;
- spatial and temporal scale;
- ecosystem-service set, pairwise relationship definition, synergy/trade-off coding, and threshold-management target, if ecosystem-service relationships are in scope;
- pollutant exposure, crop outcome, food-security endpoint, counterfactual air-quality target, and crop-calorie translation, if air-quality food-security modeling is in scope;
- biodiversity dimension, stability metric, climate-stress gradient, and moderation/interaction target, if biodiversity-stability evidence is in scope;
- spatial unit and aggregation boundary, if geospatial prediction is in scope;
- minimum mapping unit and detection threshold, if small-patch systems are in scope;
- target map variable, spatial resolution, observation inventory, predictor stack, spatial autocorrelation plan, and uncertainty layer, if an environmental map product is in scope;
- measurement method;
- bidirectional pathways, if impacts and feedbacks are both in scope;
- expected heterogeneity.

Load:

- `references/environmental-life-science.md` for domain heterogeneity.
- `references/cee-alignment.md` for environmental evidence standards.
- `references/pls-vip-environmental-indicators.md` for NDVI, vegetation, soil, climate, ecological indicator, PLS regression, and VIP interpretation audits.
- `references/ecosystem-service-threshold-ml.md` for ecosystem-service relationship mapping, GWR-plus-ML workflows, nonlinear driver interpretation, threshold/optimal-interval identification, and spatial management translation.
- `references/air-quality-food-security.md` for ozone, aerosol, SIF, crop yield, crop-calorie, counterfactual air-quality targets, and food-security co-benefit modeling.
- `references/soil-biodiversity-aridity-stability.md` for soil biodiversity, aridity gradients, ecosystem stability, climate-stress moderation, and biodiversity-function buffering claims.
- `references/ant-soil-carbon-meta.md` for soil-fauna meta-analysis, ecosystem-engineer effects on SOC stock and CO2 flux, trait-mediated moderators, and climate-context extraction.
- `references/small-wetland-methane-scaling.md` for wetland methane, small water bodies, fine-resolution remote sensing, and scale-sensitive upscaling.
- `references/cryosphere-ground-ice-mapping.md` for permafrost, near-surface ground ice, borehole observations, geospatial predictors, ensemble machine learning, spatial autocorrelation, prediction intervals, and public map-data audits.
- `references/agroecosystem-nutrient-meta-analysis.md` for crop yield, soil organic carbon, fertilizer, amendment, and nutrient-management meta-analyses.
- `references/agricultural-ml-yield-prediction.md` for crop-yield prediction studies integrating meteorological, breeding, genomic, remote-sensing, or field-trial data.
- `references/agricultural-irrigation-optimization.md` for brackish-water irrigation, water-salt-yield-emission trade-offs, GAM nonlinear response modeling, NSGA-II optimization, and decision ranges such as ECw management windows.
- `references/environmental-causal-ml.md` for environmental causal machine learning studies using DML, CATE, AutoML, SHAP/PDP-style interpretation, high-dimensional pollutant exposure data, socioeconomic covariates, ARGs, drinking-water safety, or One Health outcomes.
- `references/food-system-bidirectional-nexus.md` for food-system reviews linking environmental pressures, feedbacks, trade, diets, crops, livestock, and aquatic foods.
- `references/food-waste-geospatial-ml.md` for county, city, supply-chain, or market-level food-waste forecasting with geospatial analytics and machine learning.
- `references/environmental-scenario-synthesis.md` when a review builds a literature-derived database, machine-learning/spatial model, or policy scenario simulation.
- `references/land-use-optimization-tradeoffs.md` when a study uses multiobjective optimization, Pareto frontiers, land-use allocation, or food-water-carbon trade-off modeling.
- `references/system-hub-policy-synthesis.md` when a paper uses one focal variable, such as nitrogen, carbon, water, phosphorus, air pollution, or biodiversity pressure, to connect multiple environmental, production, health, or policy outcomes under a boundary or scenario framework.

## Workflow

1. Build PECO/PICO.
2. Define exposure or intervention precisely.
3. Define outcome families and measurement units.
4. Specify eligible designs.
5. Identify heterogeneity sources.
6. Plan risk-of-bias or study quality appraisal.
7. Plan grey-literature and supplementary search if relevant.
8. Decide narrative, evidence map, or meta-analysis.
9. Build domain-specific extraction table.

Use `templates/peco-framework.md`.
Use `templates/pls-vip-environmental-audit.md` for PLS/VIP environmental indicator studies.
Use `templates/ecosystem-service-threshold-audit.md` and `templates/ecosystem-service-threshold-schema.csv` for ecosystem-service relationship threshold-management studies.
Use `templates/air-quality-food-security-audit.md` and `templates/air-quality-food-security-schema.csv` for air-pollution, crop-yield, SIF, and food-security co-benefit studies.
Use `templates/biodiversity-stability-climate-stress-audit.md` and `templates/biodiversity-stability-climate-stress-schema.csv` for soil biodiversity, aridity, ecosystem-stability, and climate-stress moderation studies.
Use `templates/soil-fauna-carbon-meta-audit.md` and `templates/soil-fauna-carbon-schema.csv` for ant, termite, earthworm, or other soil-fauna meta-analyses that separate SOC stock, CO2 flux, and organic-matter stability outcomes.
Use `templates/wetland-methane-scale-audit.md` and `templates/wetland-methane-geospatial-schema.csv` for small-wetland methane and scale-sensitive upscaling studies.
Use `templates/cryosphere-ground-ice-map-audit.md` and `templates/cryosphere-map-validation-schema.csv` for permafrost, near-surface ground ice, and other cryosphere map products.
Use `templates/food-environment-bidirectional-audit.md` and `templates/food-environment-pressure-schema.csv` for food-system nexus reviews.
Use `templates/food-waste-forecast-audit.md` and `templates/food-waste-geospatial-feature-schema.csv` for geospatial food-waste forecasting.
Use `templates/dual-outcome-meta-audit.md` and `templates/nutrient-meta-extraction-schema.csv` for agroecosystem nutrient meta-analysis.
Use `templates/nutrient-meta-reproducibility-ledger.csv` when a nutrient meta-analysis provides Zenodo/OSF/GitHub data and code.
Use `templates/nutrient-meta-dataset-schema.csv` and `templates/nutrient-meta-r-workflow-blueprint.csv` when designing data tables and R scripts for nutrient meta-analysis.
Use `templates/ml-yield-prediction-audit.md` and `templates/ml-yield-feature-schema.csv` for agricultural ML yield-prediction studies.
Use `templates/environmental-causal-ml-audit.md` and `templates/environmental-causal-ml-feature-schema.csv` for environmental causal ML studies.
Use `templates/irrigation-optimization-audit.md` and `templates/irrigation-optimization-schema.csv` for brackish-water irrigation and water-salt-yield-emission optimization studies.
Use `templates/scenario-model-audit.md` and `templates/policy-scenario-matrix.csv` for scenario-model evidence synthesis.
Use `templates/pareto-frontier-audit.md` and `templates/multi-objective-tradeoff-schema.csv` for multiobjective optimization and land-use trade-off studies.
Use `templates/system-hub-variable-audit.md` and `templates/system-hub-variable-schema.csv` for papers that organize evidence around a system hub variable, safe boundary, hotspot layer, co-benefit structure, or policy-portfolio translation.

## Output Modes

### PECO Protocol Memo

```text
Population:
Exposure:
Comparator:
Outcome families:
Eligible designs:
Heterogeneity:
Risk of bias:
Synthesis plan:
```

### Domain Extraction Plan

Include:

- species/population;
- site/geography;
- exposure dose/intensity;
- duration/window;
- endpoint;
- assay/measurement method;
- confounders;
- study quality.

### PLS/VIP Environmental Indicator Audit

Use this mode when a study links NDVI, vegetation productivity, soil quality, biodiversity, ecosystem-service, pollutant, climate, or hydrological indicators to multiple correlated predictors using partial least squares regression and VIP rankings.

Include:

- outcome indicator and unit;
- predictor families and expected ecological meaning;
- sample size, time span, site count, and clustering;
- missing-data and scaling decisions;
- component-count selection rule;
- cross-validation design and whether it respects time, site, or spatial grouping;
- RMSEP, R2/Q2, residual checks, and influential observations;
- VIP table, VIP threshold, and coefficient direction;
- whether VIP is interpreted as predictive importance, mechanism, or causal effect;
- robustness checks such as alternative component count, leave-one-year/site-out validation, or baseline regression comparison.

### Ecosystem-Service Threshold ML Audit

Use this mode when a study maps ecosystem services or ecosystem-service relationships, then uses interpretable machine learning, GWR, GAM, XGBoost, GBDT, SHAP, PDP, ICE, ALE, or response-curve overlays to identify management thresholds or optimal driver intervals.

Include:

- ecosystem services and pairwise ESR definitions;
- spatial unit, resolution, years, and service-assessment models;
- relationship coding: synergy, trade-off, co-benefit, competition, or probability of comprehensive synergy;
- driver families: climate, topography, landscape, land use, human pressure, accessibility, and policy;
- spatial heterogeneity model such as GWR and its bandwidth/kernel choices;
- ML model set, tuning, validation, and spatial leakage checks;
- interpretability method and whether thresholds come from PDP, SHAP dependence, ALE, response-curve superposition, or another method;
- optimal interval definition, probability target, and uncertainty;
- zoning or management translation and whether it is descriptive, predictive, or causal;
- robustness checks against alternative service models, spatial resolution, model family, and threshold rule.

### Air Quality Food-Security Audit

Use this mode when a study estimates how ozone, PM2.5, aerosol optical depth, diffuse radiation, SIF, temperature, or related atmospheric conditions affect crop productivity, crop yield, calories, self-sufficiency, or food-security indicators.

Include:

- crops, regions, years, and spatial unit;
- pollutant exposure metrics, such as AOT40, peak-season ozone, PM2.5, AOD, or aerosol loading;
- crop outcome: yield, SIF, productivity proxy, calorie output, or supply-demand balance;
- statistical model, flexible functional form, crop fixed effects, spatial effects, weather controls, and trend controls;
- counterfactual air-quality targets and whether targets are policy-based;
- nonlinear and synergistic pollutant-response claims;
- validation against observed yields or independent crop productivity data;
- translation from yield to calories, self-sufficiency, imports, or food security;
- data/code availability and uncertainty in source data, crop area, crop-calorie conversion, and counterfactual scenarios.

### Biodiversity Stability Climate-Stress Audit

Use this mode when a study evaluates whether biodiversity, soil biodiversity, microbial diversity, functional diversity, or community composition supports ecosystem stability under aridity, drought, warming, land-use stress, or other climate gradients.

Include:

- biodiversity dimension and measurement platform;
- stability endpoint: temporal stability, resistance, resilience, multifunctionality, productivity variability, or service stability;
- climate-stress gradient and exposure window;
- ecosystem type, spatial domain, sampling design, and temporal depth;
- interaction or moderation model: whether aridity weakens, strengthens, or changes the biodiversity-stability relationship;
- controls for productivity, soil, climate, land use, management, and spatial dependence;
- mechanism evidence from microbes, soil nutrients, plant traits, or food-web structure;
- uncertainty, threshold, nonlinear, and subgroup evidence;
- whether claims are observational associations, experiments, manipulations, or causal estimates.

### Soil Fauna Carbon Meta-Analysis Audit

Use this mode when a study synthesizes how ants or other soil fauna affect soil carbon storage, carbon fluxes, organic matter turnover, or stability across ecosystems.

Include:

- focal fauna and functional traits;
- stock versus flux versus stability outcome separation;
- effect-size family and percent-change interpretation;
- climate, latitude, baseline SOC, or ecosystem moderators;
- dependence plan for multiple endpoints per study;
- whether "more storage" and "more emissions" are both present and how the paper interprets that pattern.

### Small-Wetland Methane Scaling Audit

Use this mode when a study estimates emissions from small wetlands, ponds, small water bodies, or patchy ecosystems where spatial resolution and minimum mapping unit change the global or regional budget.

Include:

- wetland or water-body size class;
- mapping resolution and minimum detectable area;
- forested/non-forested domain boundary;
- wetland inventory or remote-sensing product;
- flux model or emission-factor source;
- annual trend window;
- contribution to total emissions;
- uncertainty, double-counting, and omission risks;
- implications for methane budgets and restoration policy.

### Cryosphere Ground-Ice Map Audit

Use this mode when a study creates or reuses a spatial map product for permafrost, near-surface ground ice, volumetric ice content, active-layer properties, thermokarst susceptibility, or related cryosphere hazards.

Include:

- target map variable and depth convention;
- spatial domain, permafrost mask, map year/window, resolution, and grid definition;
- field observation type, count, spatial distribution, and measurement comparability;
- predictor stack: substrate, hydrology, topography, geology, paleoclimate, modern climate, remote sensing, and vegetation;
- model families, ensemble strategy, calibration data, and simulation count;
- validation design, including independent or spatially blocked validation;
- spatial autocorrelation, sampling bias, and extrapolation checks;
- accuracy, bias, RMSE, R-squared, prediction interval, and uncertainty maps;
- storage, extent, hazard, infrastructure, climate, hydrology, and ecosystem interpretations;
- data DOI, code availability, and versioning of map products.

### Agroecosystem Nutrient Meta-Analysis

Use this mode for fertilizer, manure, compost, liming, biochar, and nutrient-management reviews with crop, soil, emission, or microbial outcomes.

Include:

- intervention nutrient form and rate;
- comparator nutrient background;
- crop or ecosystem;
- soil baseline status;
- climate and geography;
- experiment duration;
- yield endpoint;
- soil-carbon or soil-health endpoint;
- response-ratio or percent-change metric;
- moderator plan;
- dual-outcome trade-off interpretation.

### Food-System Bidirectional Nexus Review

Use this mode when food production affects environmental pressures and those environmental changes feed back onto food production.

Include:

- food-system scope and commodity groups;
- pressure domains: nutrients, water, biodiversity, climate, land use, soil, pollutants;
- feedback receptors: crops, livestock, blue foods, food security;
- trade or displacement pathways;
- supply-side strategies;
- demand-side strategies;
- circularity or redesign strategies;
- regional vulnerability and equity concerns;
- evidence certainty and data-source limits.

### System-Hub Variable Audit

Use this mode when a paper treats nitrogen, carbon, water, phosphorus, potassium, air pollution, biodiversity pressure, or another focal variable as a systems connector linking environmental burdens, productivity, health, food security, ecosystem function, or policy goals.

Include:

- focal system variable and why it is treated as a hub;
- coupled outcome families and which are measured versus translated;
- boundary, threshold, or target definition;
- sectors, regions, or layers included;
- hotspot or hidden-layer logic;
- co-benefit and trade-off pattern;
- scenario or policy-portfolio structure;
- uncertainty in the translation from biophysical result to policy claim;
- cross-domain lesson that could transfer to other nexus variables.

### Food-Waste Geospatial ML Forecast

Use this mode when a study predicts food waste or organic waste across counties, cities, markets, facilities, or supply-chain regions.

Include:

- waste stream and supply-chain boundary;
- spatial unit and resolution;
- target estimate source and measurement limits;
- demographic, retail, expenditure, income, policy, and access predictors;
- model families and hyperparameter tuning;
- spatial validation and leakage checks;
- feature importance and uncertainty;
- logistics, facility siting, circular bioeconomy, or waste-to-resource interpretation;
- limits on translating predicted waste into collectible feedstock.

### Crop-Yield ML Prediction Audit

Use this mode when a study predicts crop yield from weather, genotype, breeding value, trial, remote-sensing, soil, or management inputs.

Include:

- crop, region, years, sites, genotypes, and trial design;
- input data families and temporal aggregation;
- target yield definition and unit;
- model families compared;
- hyperparameter tuning and validation split;
- leakage risks across site, year, genotype, and repeated trials;
- performance metrics;
- interpretability method;
- extrapolation and future-climate assumptions;
- reproducibility and data-access status.

### Environmental Causal ML Audit

Use this mode when a study claims causal effects from high-dimensional environmental, pollutant, socioeconomic, microbial, omics, health, or infrastructure data using DML, causal forests, meta-learners, AutoML-plus-causal-inference, or interpretable ML.

Include:

- unit of observation and sampling frame;
- treatment/exposure definitions;
- outcome endpoint and measurement platform;
- covariate timing and confounder set;
- predictive model and causal estimator;
- nuisance-model, cross-fitting, and overlap checks;
- interpretability method and whether it is causal or predictive;
- sensitivity to hidden confounding, spatial dependence, and multiple testing;
- policy or risk-assessment claim and limits.

For urban heat DML, also include:

- treatment or exposure such as heatwave event, green space, impervious surface, shade, cool roof, ventilation, or adaptation policy;
- outcome such as LST, SUHI, air temperature, heat exposure, nighttime lights, activity, energy use, or health;
- remote-sensing, morphology, meteorology, population, income, activity, and infrastructure confounders;
- spatial autocorrelation, spillover, clustered inference, and panel/event-study structure;
- whether the claim is average effect, heterogeneous effect, or mediation.

### Irrigation Salinity Optimization Audit

Use this mode when a study combines field trials, statistical response curves, and multiobjective optimization to choose irrigation or nutrient-management windows.

Include:

- crop, region, irrigation method, salinity or nutrient treatments;
- response variables: yield, quality, soil properties, GHG emissions, water use, salt balance;
- model used to estimate nonlinear responses, such as GAM;
- optimizer used to define compromise ranges, such as NSGA-II;
- objectives, constraints, units, and direction of improvement;
- decision range and whether it is site-specific;
- risks from short time windows, salinity accumulation, unmeasured costs, and extrapolation.

### Environmental Scenario Audit

Use this mode when papers combine study extraction, model prediction, spatial extrapolation, and policy scenarios.

Include:

- evidence database scope;
- target variable and units;
- model family and validation plan;
- spatial/temporal extrapolation assumptions;
- scenario levers;
- management-quality assumptions;
- uncertainty and sensitivity checks;
- policy claim and limits.

### Pareto-Frontier Trade-Off Audit

Use this mode when a study optimizes across multiple environmental or ecosystem-service objectives.

Include:

- decision unit;
- land-use or management options;
- objectives and units;
- baseline/reference;
- constraints and excluded areas;
- model used to generate objective values;
- optimization algorithm;
- frontier interpretation;
- priority maps and consensus;
- transition costs, emissions, biodiversity, governance, and realism limits.

## Guardrails

- Do not pool across species, exposure windows, or outcome constructs without a biological or environmental rationale.
- Do not collapse mechanistic, observational, and experimental evidence without design labels.
- Do not hide geography, climate zone, tissue type, or measurement platform when they drive heterogeneity.
- Do not treat PLS VIP rankings as causal drivers of an environmental outcome; VIP is a model-dependent predictive summary under a chosen component count and scaling.
- Do not interpret PLS/VIP without component-selection, cross-validation, coefficient direction, and residual checks.
- Do not treat ESR thresholds from PDP, SHAP, ALE, or response curves as causal ecological tipping points without experimental, quasi-experimental, mechanistic, or temporal evidence.
- Do not translate model-derived optimal intervals into zoning rules without auditing spatial leakage, resolution, service-model uncertainty, threshold uncertainty, and local feasibility.
- Do not treat air-quality food-security counterfactuals as realized production gains without checking crop area, weather, management, prices, imports, storage, and policy implementation.
- Do not treat SIF or remote-sensing productivity proxies as yield unless crop-specific validation and conversion logic are explicit.
- Do not claim soil biodiversity stabilizes ecosystems under aridity without defining the stability metric, stress gradient, temporal scale, spatial dependence, and possible productivity confounding.
- Do not interpret biodiversity-stability moderation as causal unless the design supports causal identification or experimental manipulation.
- Do not flatten soil-fauna effects into one "carbon benefit" or "carbon cost" label when stock and flux outcomes move in different directions.
- Do not treat coarse-resolution wetland products as scale neutral; audit which small features are omitted.
- Do not treat a geospatial environmental map as ground truth; audit observation density, spatial autocorrelation, permafrost or domain masks, predictor time windows, uncertainty layers, and extrapolation zones.
- Do not compare cryosphere maps across products or periods without checking target definition, depth convention, permafrost boundary, resolution, map vintage, and uncertainty.
- Do not compare methane budgets without checking double-counting between wetlands, lakes, rivers, reservoirs, and inundated vegetation.
- Do not turn methane emissions alone into a wetland management recommendation without carbon storage, biodiversity, hydrology, and ecosystem-service trade-offs.
- Do not use vote-counting as evidence of effect direction or strength.
- Do not treat SHAP, feature importance, PDP, or AutoML performance as causal evidence without a separate identification strategy.
- Do not call DML or CATE estimates causal unless treatment timing, confounder adjustment, overlap, and hidden-confounding risks are explicit.
- Do not treat DML as a generic prediction method; it estimates causal parameters only under stated identification assumptions.
- Do not treat spatial DML as solved by adding coordinates; audit spatial dependence, spillovers, clustered inference, and validation boundaries.
- Do not interpret short-term yield gains as soil-carbon sequestration evidence without duration, baseline SOC, depth, and measurement-method checks.
- Do not collapse fertilizer form, nutrient rate, baseline nutrient limitation, crop type, and climate into one pooled effect without moderator or subgroup logic.
- Do not describe food-system impacts in only one direction when the review question is bidirectional; map both pressure and feedback pathways.
- Do not treat global average food footprints as local risk without tracing trade, geography, vulnerability, and production-system context.
- Do not treat county-level predicted food waste as directly collectible waste without collection participation, contamination, hauling cost, facility capacity, and policy constraints.
- Do not ignore spatial autocorrelation, adjacency leakage, urban-rural imbalance, or high-waste outliers when auditing geospatial ML forecasts.
- Do not interpret store counts, restaurant counts, population, income, or social-program access as causal drivers unless the design supports causal inference.
- Do not treat random train/test performance in crop trials as proof of generalization to new years, sites, or genotypes; require grouped or out-of-domain validation where the claim needs it.
- Do not interpret variable importance, PDPs, or SHAP values causally unless the design supports causal interpretation.
- Do not present future yield forecasts without explicit weather/climate inputs, scenario assumptions, and extrapolation checks.
- Do not treat a machine-learning scenario projection as causal proof unless the design supports causal interpretation.
- Do not present a policy lever, such as recycling rate or intervention coverage, as sufficient without auditing implementation quality and compensating inputs.
- Do not treat a Pareto-efficient frontier as a politically feasible pathway without social, economic, governance, biodiversity, and transition-cost constraints.
- Do not collapse global objective gains into local welfare claims without regional supply, trade, livelihood, water-access, and justice checks.
- Do not generalize an irrigation salinity decision range across regions without soil texture, groundwater depth, climate, crop variety, irrigation method, and long-term salt-balance checks.
