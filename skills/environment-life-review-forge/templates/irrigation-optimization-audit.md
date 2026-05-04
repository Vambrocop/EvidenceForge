# Irrigation Optimization Audit

## Study

- Citation:
- DOI / URL:
- Crop:
- Region:
- Soil / climate:
- Experiment years:
- Data/code:

## Decision Context

- Decision variable:
- Treatment levels:
- Irrigation methods:
- Water source:
- Baseline or control:
- Management constraints:
- Intended use:

## Outcomes

Use `irrigation-optimization-schema.csv` for a machine-readable objective ledger.

| Outcome family | Variable | Unit | Direction | Measurement window | Concern |
|---|---|---|---|---|---|
| Production | | | maximize | | |
| Quality | | | | | |
| Soil / salinity | | | | | |
| GHG emissions | | | minimize | | |
| Water use | | | minimize | | |

## Modeling Stack

| Layer | Method | Purpose | Validation | Limitation |
|---|---|---|---|---|
| Field experiment | | treatment-response evidence | | |
| Response curve | GAM / other | nonlinear response shape | | |
| Optimizer | NSGA-II / other | nondominated solution search | | |
| Sensitivity | | robustness and transferability | | |

## Decision Range

- Reported range:
- Objective balance achieved:
- Endpoints that constrain the lower bound:
- Endpoints that constrain the upper bound:
- Conditions where the range may fail:
- Long-term monitoring needed:

## Transferability Audit

- Soil texture and baseline salinity:
- Groundwater depth:
- Climate and evapotranspiration:
- Crop variety:
- Irrigation infrastructure:
- Fertilizer and residue management:
- GHG measurement frequency:
- Economic or labor cost:
- Policy or water-rights constraint:

## Interpretation

- Main modeled trade-off:
- Main co-benefit:
- What the optimizer can support:
- What policy should not infer:
- Most useful reusable method idea:
- Follow-up evidence needed:

## Guardrail Check

- Are all objectives and units visible?
- Is the decision range described as context-specific?
- Are short-term field results separated from long-term salt-balance claims?
- Are GHG species and cumulative emission assumptions reported?
- Are optimizer outputs separated from real-world feasibility?
- Are sensitivity and transferability limits explicit?
