# Cryosphere Ground-Ice Mapping

Use this reference when a review, protocol, or paper audit involves permafrost-region map products, near-surface ground ice, volumetric ice content, active-layer or subsurface cryosphere properties, or map-derived hazard and ecosystem claims.

## Running Example

Wang, Ran, Li, and colleagues (2026) created the T5mVIC map: a 1 km grid product of volumetric ice content within 5 m below the permafrost table across the Northern Hemisphere.

Method elements worth extracting:

- Field evidence: borehole-based ground-ice observations; record observation type, depth interval, site geography, and measurement comparability.
- Target construct: volumetric ice content, not simply permafrost presence/absence.
- Predictors: substrate and hydrology, topography, surficial geology, soil texture and organic carbon, paleoclimate, modern climate, snow, land-surface temperature, vegetation, and other remote-sensing or reanalysis products.
- Modeling: ensemble machine learning with a Bayesian model-averaging layer, not a single black-box model.
- Simulation: repeated ensemble simulations to represent predictive uncertainty.
- Validation: report R-squared, RMSE, bias, independent or spatially aware validation, and prediction interval width.
- Interpretation: separate map accuracy, ice storage estimates, hazard planning, hydrology, ecosystem, infrastructure, and climate-feedback claims.
- Reproducibility: cite the map-data DOI and map version; do not treat downloaded rasters as timeless facts.

Key reported values from the paper:

- Spatial resolution: 1 km.
- Target depth: 5 m below the permafrost table.
- Observations: 1178 boreholes.
- Validation: R-squared about 0.86, RMSE about 7.08 percent VIC, bias about 0.02 percent VIC.
- Prediction interval uncertainty: about 16.08 +/- 3.55 percent VIC.
- Estimated Northern Hemisphere near-surface permafrost ice storage: about 54,600 km3, with a reported interval of 47,800 to 62,300 km3.
- High VIC areas are concentrated in low-lying plains, wetlands, and marshes; mountainous regions show lower values in the paper's synthesis.
- Data DOI: `https://doi.org/10.12072/ncdc.nieer.db7052.2025`.
- Article DOI: `https://doi.org/10.1016/j.scib.2026.02.028`.

## Audit Logic

Treat cryosphere maps as evidence products with three layers:

1. Measurement layer: what was observed directly, where, by whom, and at what depth.
2. Prediction layer: which environmental predictors and model families were used to fill space.
3. Interpretation layer: what the map is used to claim about storage, thaw risk, infrastructure, ecosystems, hydrology, or climate feedback.

Do not let the interpretation layer outrun the measurement and prediction layers.

## Minimum Extraction Fields

- `map_product`
- `target_variable`
- `target_depth`
- `spatial_domain`
- `permafrost_mask`
- `resolution`
- `map_period`
- `observation_count`
- `observation_type`
- `predictor_families`
- `model_family`
- `ensemble_or_bma_method`
- `spatial_autocorrelation_handling`
- `validation_design`
- `accuracy_metrics`
- `uncertainty_metric`
- `storage_or_extent_estimate`
- `data_doi`
- `code_availability`
- `main_interpretation`
- `interpretation_limit`

## Common Failure Modes

- Random train/test splits that overstate accuracy under spatial autocorrelation.
- Sparse boreholes in remote permafrost regions hidden by strong global performance metrics.
- Predictor time-window mismatch between paleoclimate, modern climate, remote-sensing products, and current risk claims.
- Comparing maps with different target depth conventions, permafrost masks, resolutions, or ground-ice definitions.
- Treating variable importance as a mechanistic or causal explanation.
- Translating map-predicted ice content into infrastructure, carbon, or hydrology risk without local geology, drainage, thaw dynamics, and uncertainty.

## Prompt Skeleton

```text
Use environment-life-review-forge to audit this cryosphere map product.

Target map:
Spatial domain and resolution:
Observation inventory:
Predictor families:
Model and ensemble strategy:
Validation design:
Uncertainty layer:
Data/code availability:

Return:
1. map-product evidence card;
2. validation and leakage audit;
3. uncertainty and extrapolation risks;
4. claims that are supported;
5. claims that require additional local or mechanistic evidence.
```
