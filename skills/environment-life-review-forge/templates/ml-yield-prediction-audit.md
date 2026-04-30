# Agricultural ML Yield Prediction Audit

## Study Or Model

- Citation:
- DOI / URL:
- Crop:
- Region:
- Prediction target:
- Intended use:
- Data/code location:

## Trial And Data Structure

| Unit | Value | Notes |
|---|---|---|
| Years | | |
| Sites / locations | | |
| Genotypes / cultivars | | |
| Replicates / plots | | |
| Sample count | | |
| Trial design | | |
| Management assumptions | | |

## Input Families

| Input family | Variables | Timing | Source | Leakage risk |
|---|---|---|---|---|
| Breeding / genomic | | | | |
| Meteorological | | | | |
| Soil | | | | |
| Management | | | | |
| Remote sensing | | | | |
| Historical yield | | | | |

## Models And Metrics

| Model | Tuning | Validation | R2 | RMSE | MAE | MAPE / RRMSE | Notes |
|---|---|---|---|---|---|---|---|
| Random Forest | | | | | | | |
| XGBoost | | | | | | | |
| SVR | | | | | | | |
| GPR | | | | | | | |
| Baseline model | | | | | | | |

## Validation Fit To Claim

- Claim:
- Random split:
- Leave-year-out:
- Leave-site-out:
- Leave-genotype-out:
- External validation:
- Nested tuning:
- Calibration / uncertainty:

## Interpretability

- Feature importance method:
- PDP / SHAP / other:
- Top predictors:
- Agronomic plausibility:
- Causal overclaim risk:
- Out-of-domain risk:

## Forecast Or Deployment

- Forecast horizon:
- Future weather or climate source:
- Deployment region:
- Missing-data handling:
- Retraining plan:
- Uncertainty communication:

## Reproducibility

- Raw data:
- Code:
- Package versions:
- Random seeds:
- Hardware / environment:
- Data-access restrictions:

## Guardrail Check

- Does validation match the deployment claim?
- Are site/year/genotype dependencies handled?
- Are BLUP or genetic inputs estimated without leakage?
- Are weather windows available at prediction time?
- Are feature explanations separated from causal interpretation?
- Are future forecasts tied to explicit climate or weather inputs?
