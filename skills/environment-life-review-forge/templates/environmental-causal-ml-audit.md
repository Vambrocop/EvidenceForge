# Environmental Causal ML Audit

## Study

- Citation:
- DOI / URL:
- Domain:
- Unit of observation:
- Sampling frame:
- Geography:
- Time window:
- Data/code:

## Causal Question

- Outcome:
- Treatment/exposure:
- Comparator or contrast:
- Estimand:
- Intended interpretation:
- Policy or risk-assessment use:

## Data Structure

| Variable family | Examples | Timing | Role | Leakage / bias risk |
|---|---|---|---|---|
| Outcome / endpoint | | | | |
| Pollutant exposures | | | | |
| Microbial / genetic markers | | | | |
| Treatment process | | | | |
| Socioeconomic variables | | | | |
| Geography / climate | | | | |

## Modeling Stack

| Layer | Method | Purpose | Validation | Limitation |
|---|---|---|---|---|
| Predictive ML / AutoML | | | | |
| Interpretability | | | | |
| Causal estimator | | | | |
| Sensitivity analysis | | | | |

## Identification Audit

- Treatment timing is pre-outcome:
- Confounder set is pre-treatment:
- Potential mediators separated from confounders:
- Overlap / positivity checked:
- Spatial clustering handled:
- Multiple testing handled:
- Hidden-confounding sensitivity:
- Cross-fitting or sample splitting:
- Alternative feature-set robustness:

## Interpretation

- Predictive finding:
- Causal finding:
- Heterogeneity / CATE:
- Mechanistic plausibility:
- Main uncertainty:
- What should not be inferred:
- Follow-up study needed:

## Guardrail Check

- Are feature-importance outputs separated from causal effects?
- Are DML/CATE assumptions stated?
- Are post-treatment or mediator variables kept out of the confounder set unless justified?
- Are socioeconomic proxies interpreted cautiously?
- Are geography and treatment-process confounding discussed?
- Is the policy claim narrower than the model result?
