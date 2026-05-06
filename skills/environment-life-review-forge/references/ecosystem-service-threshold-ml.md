# Ecosystem-Service Threshold ML

Use this reference when a study maps ecosystem services or ecosystem-service relationships (ESRs), models nonlinear drivers with interpretable machine learning, and turns response curves into threshold or optimal-interval guidance for spatial management.

## Running Example

Ren, Liu, and Lin (2026) study ecosystem-service relationships in Shandong Province, China.

Core design:

- Journal: *Ecological Indicators*, volume 186, article 114849.
- DOI: `https://doi.org/10.1016/j.ecolind.2026.114849`.
- Services: carbon storage, grain providing, soil conservation, water conservation, habitat quality, and recreation service.
- Relationships: six services combined pairwise into 15 ESRs.
- Spatial scale: 1 km mapping in Shandong Province.
- Framework: spatial ESR mapping plus nonlinear driver inference.
- Spatial model: GWR for spatial heterogeneity.
- Machine-learning model: XGBoost compared with MLR, GAM, and GBDT.
- Drivers: 27 nature-landscape-human factors.
- Dominant factors in the paper: climate variables, elevation, and nighttime light intensity.
- Threshold logic: superimposed partial-response curves identify probability-oriented optimal intervals.
- Example intervals reported in the abstract: annual mean temperature above about 15.5 C, precipitation around 484-549 mm, nighttime lights below about 1.03, elevation above about 90 m, and sunshine around 2379-2427 h.

## Why This Pattern Matters

This is useful because it moves beyond "which ecosystem services trade off" toward "under what spatial and driver conditions are synergies more likely." That makes the model more directly usable for zoning, agricultural upgrading, urban-rural interface control, biodiversity-friendly conservation, or ecological restoration planning.

The risk is that interpretable ML can make exploratory thresholds look more certain than they are. A threshold from PDP/SHAP/ALE or response-curve overlays is a model-derived management heuristic unless a stronger causal or mechanistic design supports it.

## Minimum Extraction Fields

- `study_id`
- `services`
- `relationship_definition`
- `spatial_domain`
- `resolution`
- `years`
- `service_model_sources`
- `relationship_classes`
- `driver_families`
- `spatial_model`
- `ml_models_compared`
- `best_model`
- `validation_design`
- `spatial_leakage_check`
- `interpretability_method`
- `threshold_rule`
- `optimal_intervals`
- `uncertainty_or_sensitivity`
- `management_translation`
- `interpretation_limit`

## Audit Questions

- Are service maps independently validated or inherited from models?
- Does the study define synergy/trade-off mathematically?
- Are spatial units and time windows aligned across all services?
- Does GWR or another spatial model handle spatial heterogeneity without leaking information?
- Was XGBoost tuned and validated with spatially appropriate splits?
- Are PDP/SHAP/ALE curves used only as model interpretation, or are they overclaimed as mechanisms?
- Are threshold intervals stable across model families, years, spatial resolution, and service-model choices?
- Does the paper report uncertainty around thresholds or only point intervals?
- Are management recommendations feasible under local land-use, governance, and socioeconomic constraints?

## Prompt Skeleton

```text
Use environment-life-review-forge to audit this ecosystem-service threshold ML paper.

Services:
ESR definition:
Spatial scale:
Drivers:
Model set:
Interpretability method:
Threshold rule:
Management claim:

Return:
1. ESR evidence card;
2. spatial-model and leakage audit;
3. threshold/optimal-interval audit;
4. supported management guidance;
5. overclaiming risks and robustness checks.
```
