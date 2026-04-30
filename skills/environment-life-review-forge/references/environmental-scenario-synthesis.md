# Environmental Scenario Evidence Synthesis

Use this reference when an environmental review moves beyond a conventional meta-analysis into a literature-derived database, predictive model, spatial extrapolation, or policy scenario simulation.

## When This Pattern Fits

Use this pattern for questions such as:

- What happens under a policy target, adoption pathway, or management scenario?
- Does an intervention create trade-offs across emissions, yield, biodiversity, pollution, or health?
- Can a database extracted from many field studies support spatial or future projections?
- Which assumptions drive the difference between an apparent benefit and a risk?
- What is the modeled option space when food, water, carbon, biodiversity, or other ecosystem services are optimized jointly?

This is common in nutrient recycling, agricultural mitigation, land-use change, ecological restoration, biochar, water pollution control, biodiversity policy, and environmental health.

## Running Example

Ba et al. (2026), "Full Manure Recycling Risks an 18% Rise in China's Cropland N2O Emissions Without Improved Management," Global Change Biology, is a useful model article for this pattern.

The study compiled N2O-N flux evidence from 443 Chinese field studies and 2186 measurements, including 689 manure-N observations. It compared machine-learning models, used environmental and management predictors, reconstructed gridded cropland emissions, and simulated 2050 manure-recycling scenarios. Its key workflow lesson is that a circular-economy policy target can become environmentally risky when implementation quality is weak. Full recycling alone is not the same as effective nutrient management.

Bayer, Lautenbach, and Arneth (2023), "Benefits and trade-offs of optimizing global land use for food, water, and carbon," PNAS, is a useful example of a different scenario family: multiobjective land-use optimization. It combines LPJ-GUESS ecosystem modeling with NSGA-II optimization to estimate a Pareto frontier for carbon storage, crop production, and available runoff. Its key workflow lesson is that theoretical option-space evidence can reveal where large gains are biogeophysically possible, while also making implementation realism, local welfare, trade, biodiversity, and transition costs impossible to ignore.

Method details worth emulating:

- database rows are measurements or treatment cases, not just papers;
- variables cover climate, soil, nitrogen-management, crop-system, and geography;
- model performance is checked with train/test splitting and cross-validation;
- spatial extrapolation uses explicit gridded inputs;
- scenario definitions separate policy coverage from management quality;
- outputs are tied back to policy levers and their uncertainty.

Source links:

- Article record: https://doi.org/10.1111/gcb.70837
- Bangor open-access record: https://research.bangor.ac.uk/en/publications/full-manure-recycling-risks-an-18-rise-in-chinas-cropland-n2o-emi/
- Data: https://doi.org/10.5281/zenodo.19144029
- Code: https://doi.org/10.5281/zenodo.19144282
- Land-use optimization example: https://doi.org/10.1073/pnas.2220371120
- Land-use code/data: https://github.com/slautenb/lpjguessOptim

## Workflow

1. Define the policy claim or environmental scenario.
2. Separate the evidence question from the model question.
3. Build a study-case database with transparent search and eligibility rules.
4. Code units, measurement windows, geography, design, and management context.
5. Define the target variable and candidate predictors before modeling.
6. Compare models against a held-out or cross-validated benchmark.
7. Audit whether the model extrapolates outside the observed domain.
8. Build a scenario matrix that separates coverage, intensity, quality, timing, and compensating inputs.
9. Report the main result with uncertainty, sensitivity checks, and implementation caveats.
10. Translate policy implications as conditional claims, not universal claims.

## Minimum Extraction Fields

- study_id;
- measurement_id;
- country or region;
- coordinates or spatial unit;
- climate variables;
- soil variables;
- intervention or exposure;
- comparator;
- target outcome and units;
- management quality;
- time window;
- crop, species, ecosystem, or population;
- model predictors used;
- uncertainty fields;
- source table or figure.

## Scenario Design Checklist

For every scenario, record:

- baseline year and target year;
- policy lever;
- adoption or coverage level;
- implementation quality;
- input compensation or substitution assumptions;
- land-use or population assumptions;
- climate pathway or environmental boundary condition;
- spatial resolution;
- model target;
- uncertainty checks;
- policy claim.

## Guardrails

- Do not call the project a meta-analysis unless it synthesizes effect sizes with a defensible statistical model.
- Do not hide that a machine-learning model is predictive rather than causal.
- Do not treat high model performance as proof that future scenarios are reliable.
- Do not average incompatible measurement units or exposure windows.
- Do not turn policy language into evidence language. "Full recycling" or "high adoption" may still fail if quality, timing, or total input changes.
- Do not ignore spatial autocorrelation, gridded-data uncertainty, or training-domain limits.
