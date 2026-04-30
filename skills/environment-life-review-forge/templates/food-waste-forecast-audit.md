# Food-Waste Geospatial ML Forecast Audit

## Study Or Model

- Citation:
- DOI / URL:
- Waste stream:
- Geography:
- Spatial unit:
- Time period:
- Intended use:
- Data/code location:

## Target Definition

- Target variable:
- Unit:
- Target source:
- Measured or estimated:
- Annual / monthly / daily:
- Retail / household / food-service / total:
- Recoverable fraction:
- Known measurement limits:

## Feature Families

| Feature family | Variables | Source | Spatial scale | Leakage risk |
|---|---|---|---|---|
| Demographics | | | | |
| Population / density | | | | |
| Retail stores | | | | |
| Restaurants / food service | | | | |
| Food expenditure | | | | |
| Income / economy | | | | |
| Agricultural sales | | | | |
| Social-program access | | | | |
| Policy / infrastructure | | | | |

## Models And Metrics

| Model | Tuning | Validation | R2 | MAE | RMSE | Notes |
|---|---|---|---|---|---|---|
| Multiple linear regression | | | | | | |
| k-nearest neighbors | | | | | | |
| Support vector regressor | | | | | | |
| Random forest | | | | | | |
| Gradient boosting | | | | | | |
| Adaptive boosting | | | | | | |
| Deep neural network | | | | | | |
| Baseline | | | | | | |

## Spatial Validation

- Random split:
- Spatial block / leave-region-out:
- Urban vs rural performance:
- High-waste county performance:
- Low-waste county performance:
- Residual spatial autocorrelation:
- Calibration by volume class:
- Uncertainty interval:

## Planning Translation

- Collection-system implication:
- Facility-siting implication:
- Logistics constraint:
- Contamination constraint:
- Policy or participation constraint:
- Circular-bioeconomy implication:
- What the prediction cannot support:

## Guardrail Check

- Is the target measured or modeled?
- Are predictors independent from the target construction?
- Does validation test geographic transfer?
- Are high-waste outliers audited separately?
- Are generated, collectible, and usable waste separated?
- Are feature-importance claims kept non-causal?
