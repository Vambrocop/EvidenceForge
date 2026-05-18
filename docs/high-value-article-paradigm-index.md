# High-Value Article Paradigm Index

This index records articles in the repository that are useful not only as citations, but as reusable research-workflow paradigms.

The key extraction question is:

```text
What analysis content did the paper use, was that analysis form appropriate, and what raw data structure/code pattern can be reused?
```

This is different from a normal literature note. A paradigm note should help a human researcher or AI agent reconstruct:

- the data unit;
- the outcome family;
- the analysis form;
- the model object or code layer;
- the table schema;
- the reproducibility package;
- the overclaim guardrails.

## Current Nature Communications / Nature-Family Seeds

| Article seed | Journal type | Main reusable analysis form | Data unit | Reuse status | Where captured |
|---|---|---|---|---|---|
| Liang & Schlesinger, potassium fertilization and cereal yield/SOC | Nature Communications | dual-outcome nutrient meta-analysis; `lnRR`; `metafor::rma.mv`; BRT/driver exploration; open R/data package | treatment-control observations for yield and SOC | workflow reusable; Zenodo package identified and partly extracted | `skills/environment-life-review-forge/references/agroecosystem-nutrient-meta-analysis.md` |
| Wang et al., ant-mediated soil carbon cycling and organic matter stability | Nature Communications | stock-vs-flux ecological meta-analysis; `rma.mv`; shared-control VCV; random forest; PLS-PM/PLS-SEM; transparent peer review | effect sizes nested within studies, outcomes, sites, and traits | workflow reusable; local PDF/supplement/review inspected; Figshare code/data still needs full audit | `skills/meta-analysis-forge/references/soil-fauna-carbon-meta.md`; `skills/meta-analysis-forge/references/ecological-meta-ml-path-model-paradigm.md` |
| Raveloaritiana & Wanger, agricultural diversification second-order meta-analysis | Nature Communications | second-order hierarchical meta-regression; duration moderator; overlap checks; quality scorecard; multinomial yield-service trade-off model | review-level effects from existing meta-analyses | workflow reusable; OSF dependency inventory already started | `skills/umbrella-review-skeptic/references/agricultural-diversification-second-order-meta.md` |
| Baojing Gu-related system synthesis examples | Nature-family / Science-family | system-hub framing; pressure-source-sink-impact pathway; policy portfolio and safe-boundary logic | multi-source system indicators, regional/national estimates, policy scenarios | conceptual and workflow seed; each paper needs separate code/data audit before reproducibility claims | `docs/gu-baojing-method-extraction.md`; `skills/environment-life-review-forge/references/system-hub-policy-synthesis.md` |
| Liu et al., air quality and China's food security | Nature Food | satellite/statistical model; flexible functional forms; counterfactual food-production gains; open code link | crop-by-region observations and pollution/climate covariates | workflow seed; code link captured, full script audit not yet complete | `skills/environment-life-review-forge/references/air-quality-food-security.md` |
| Mogollon et al., food production and environment bidirectional effects | Nature Reviews Earth & Environment | bidirectional pressure synthesis; food-system/environment nexus map | review-level evidence categories | synthesis framing seed; not a direct code-reproduction target | `skills/environment-life-review-forge/references/food-system-bidirectional-nexus.md` |
| Girn et al., psychedelic drug effects on brain circuit function | Nature Medicine | international mega-analysis; harmonized preprocessing; Bayesian hierarchical modeling | multi-site resting-state fMRI derived data | local PDF exists; GitHub supplement/code should be audited | `docs/local-meta-literature-reproducibility-inventory.md`; `docs/reading-list.md` |
| Garrett et al., acute physical activity and cognition | Communications Psychology | systematic review plus Bayesian hierarchical meta-analysis | study-level cognitive-task effects | local PDF exists; OSF/GitHub and Bayesian model code should be audited | `docs/local-meta-literature-reproducibility-inventory.md` |
| Wu et al., organic amendment effects in cotton fields | field journal meta-analysis | cotton-specific organic amendment meta-analysis; random forest driver ranking | treatment-control soil/crop-yield effects | local PDF exists; public data/code not yet identified | `docs/local-meta-literature-reproducibility-inventory.md` |

## What Counts As "Analysis Content"

When extracting a good article, write down the analysis content in this form:

```text
Analysis content:
Data unit:
Outcome family:
Statistical/computational form:
Why this form is appropriate:
Main output:
Reusable data fields:
Reusable code pattern:
Overclaim risk:
```

Examples:

### Treatment-Control Primary Studies

- data unit: effect size from primary study;
- appropriate forms: `lnRR`, Hedges' d, mean difference, `metafor::rma.mv`, VCV/RVE;
- reusable fields: treatment/control mean, SD, n, study ID, effect ID, shared control ID, moderators;
- overclaim risk: treating observational moderators as causal.

### Review-Level Evidence

- data unit: meta-analysis/review-level estimate;
- appropriate forms: second-order meta-analysis, overlap matrix, review-quality scorecard, duration moderator;
- reusable fields: review ID, primary-study count, effect size, outcome family, practice category, duration, overlap flag;
- overclaim risk: treating synthesis-of-syntheses as primary-study causal evidence.

### Multi-Outcome Trade-Offs

- data unit: paired yield-service, carbon-water-food, or profit-biodiversity outcomes;
- appropriate forms: paired coding, win/loss categories, multinomial models, Pareto frontier, multicriteria evaluation;
- reusable fields: outcome pair, direction, uncertainty, time horizon, system boundary, functional unit;
- overclaim risk: treating a statistical win-win as welfare or policy optimality.

### Driver Ranking And Mechanism Structure

- data unit: effect sizes or site observations with predictors;
- appropriate forms: random forest/BRT for ranking, PLS-PM/SEM for path structure;
- reusable fields: predictors, response, variable importance, path blocks, manifest variables;
- overclaim risk: interpreting variable importance or path coefficients as causal proof.

### Scenario / System Modeling

- data unit: grid cell, region, technology scenario, farm system, or policy case;
- appropriate forms: scenario matrix, optimization, LCA/TEA, process model, spatial model;
- reusable fields: baseline, intervention, scenario assumptions, functional unit, system boundary, uncertainty;
- overclaim risk: confusing feasible option space with implementable policy.

## Minimum Workflow For Future Good Papers

When a new good article is added, especially a Nature Communications article, do this:

1. Save local article, supplementary information, reporting summary, peer review, and data/code links.
2. Build the analysis-form fit map first.
3. Extract the data table schema before summarizing conclusions.
4. Inspect public code before claiming reproducibility.
5. Identify core model objects: `rma.mv`, `ranger`, `gbm`, `plspm`, `nnet`, `lme4`, `brms`, spatial model, optimization model, etc.
6. Record package versions and script order.
7. Turn the reusable pieces into a skill rule, coding schema, R workflow blueprint, or reviewer checklist.

## Current Gaps To Fill

- Potassium fertilization NC: full Zenodo/Mendeley code audit can be deepened into a complete package walkthrough.
- Ant-mediated soil carbon NC: Figshare data/code should be downloaded and checked for table schema, VCV construction, `rma.mv`, `ranger`, and `plspm` scripts.
- Agricultural diversification NC: OSF script order and model objects can be mapped into a full second-order reproduction guide.
- Psychedelic Nature Medicine mega-analysis: GitHub supplement should be inspected for preprocessing, harmonized data structure, and Bayesian hierarchical model scripts.
- Communications Psychology Bayesian meta-analysis: OSF/GitHub materials should be inspected for priors, model specification, posterior summaries, and sensitivity checks.
- Baojing Gu Nature-family papers: need paper-by-paper code/data audit before turning them into reproducibility templates.
- Nature Food air-quality/food-security paper: public GitHub code should be scanned for data pipeline, model formulas, figure scripts, and counterfactual assumptions.

## Reuse Rule

Do not ask only:

```text
What did this paper find?
```

Ask:

```text
What analysis forms did this paper combine, and what raw information would I need to reproduce or reuse that workflow?
```
