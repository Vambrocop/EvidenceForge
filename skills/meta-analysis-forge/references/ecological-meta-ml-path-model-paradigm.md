# Ecological Meta + ML + Path-Model Paradigm

Use this reference when an ecological meta-analysis combines classical meta-analytic synthesis with machine-learning variable ranking and path-model or SEM-family mechanism interpretation.

## Running Example

Wang, Fan, Zamanian, Yin, Kuzyakov, and Kardol (2026), *A meta-analysis of ant-mediated effects on soil carbon cycling and organic matter stability*, *Nature Communications*, DOI `10.1038/s41467-026-72626-y`.

The article and supplementary information make this a strong pattern case because it combines:

- PRISMA-style study selection;
- multiple carbon outcome families;
- mixed-effects meta-regression;
- explicit random-effects structure selection;
- heterogeneity and publication-bias checks;
- sensitivity analysis;
- linear and nonlinear moderator comparison by AIC/AICc;
- random forest variable-importance ranking;
- PLS-PM path modeling for indirect driver logic.

## Core Paradigm

The research design can be read as a five-layer workflow:

1. **Evidence layer**: collect global primary studies and observations.
2. **Effect-size layer**: separate outcome families and compute appropriate effect sizes.
3. **Meta-analysis layer**: estimate pooled effects and moderators with mixed-effects models.
4. **Machine-learning layer**: rank environmental, soil, and trait predictors.
5. **Path-model layer**: organize direct and indirect pathways among climate, ecosystem, soil properties, ant traits, and carbon outcomes.

This is powerful because each layer answers a different question.

| Layer | Question answered | Typical risk |
|---|---|---|
| Meta-analysis | What is the average effect and uncertainty? | Pooling incompatible endpoints |
| Meta-regression | Which moderators explain heterogeneity? | Overreading observational moderators |
| Random forest | Which predictors rank as important? | Treating importance as causality |
| PLS-PM / path model | How might predictors connect indirectly? | Treating a path diagram as proven mechanism |
| Sensitivity / bias checks | Are results robust? | Treating diagnostics as complete proof |

## Effect-Size Strategy

The example uses response-ratio logic for many soil and flux outcomes. The supplementary tables report `LnRR` in several moderator analyses.

In similar studies:

- use log response ratios for treatment-versus-control ecological quantities such as SOC, gas fluxes, nutrients, pH, biomass, or microbial indicators;
- use Hedges' `d` or standardized mean differences when outcomes are measured on scales that cannot be interpreted as proportional changes;
- never merge log response ratios and standardized differences without a clear harmonization plan;
- preserve the original reported values, units, sample sizes, standard deviations, and source anchors.

## Dependence Strategy

The ant-carbon example is useful because it makes dependence visible. The supplementary information reports random-effects structure comparison and selects a nested structure equivalent to `reference/obs`.

For a reusable workflow:

- code `study_id` or `reference`;
- code `observation_id` or `effect_id`;
- code endpoint family;
- model multiple observations per reference;
- do not treat multiple effects from one study as independent rows without a dependence plan;
- use a variance-covariance matrix, multilevel random effects, robust variance estimation, or sensitivity checks when within-study dependence matters.

## Model Stack To Emulate

1. **Mixed-effects meta-regression**
   - pooled effects for each outcome family;
   - moderators such as initial SOC, pH, latitude, climate, ecosystem, taxon, nesting strategy, diet, and body size.

2. **Heterogeneity and bias diagnostics**
   - total and nested heterogeneity components;
   - funnel plots or small-study diagnostics where feasible;
   - fail-safe or sensitivity checks if reported, but do not overtrust them.

3. **Linear versus nonlinear checks**
   - compare linear and nonlinear forms with AIC/AICc when the ecological response may be curved.

4. **Random forest**
   - rank drivers such as initial SOC, nesting strategy, aridity, ecosystem, initial pH, body size, and temperature;
   - treat relative importance as screening, not proof of mechanism.

5. **PLS-PM or SEM-family path model**
   - group predictors into latent or block-like constructs such as climate, ecosystem, soil properties, and traits;
   - use path modeling to organize plausible indirect pathways;
   - clearly state that the path model is explanatory and hypothesis-structuring unless supported by experimental evidence.

## What Makes This A Paradigm

This structure is reusable beyond ants:

- soil fauna and carbon cycling;
- biochar, manure, compost, and nutrient effects;
- biodiversity and ecosystem-function meta-analysis;
- greenhouse-gas flux synthesis;
- plant trait or root-trait meta-analysis;
- wetland methane or soil respiration synthesis;
- restoration and ecosystem-service outcomes.

The general recipe is:

```text
Meta-analysis for effect estimation.
Meta-regression for moderator testing.
Random forest for driver ranking.
Path modeling for system logic.
Guardrails for causality and endpoint separation.
```

## Guardrails

- Do not let random forest substitute for meta-regression uncertainty.
- Do not call PLS-PM or SEM paths causal unless the design supports causal interpretation.
- Do not rank variables before checking collinearity and measurement comparability.
- Do not flatten stock, flux, and stability outcomes into one ecological score.
- Do not use a path model to rescue weak or inconsistent pooled effects.
- Do not mix effect-size families without a transparent conversion or stratified analysis.

## Public Sources Used

- Article page: https://www.nature.com/articles/s41467-026-72626-y
- Supplementary information: https://static-content.springer.com/esm/art%3A10.1038%2Fs41467-026-72626-y/MediaObjects/41467_2026_72626_MOESM1_ESM.pdf
