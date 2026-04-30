---
name: environment-life-review-forge
description: Adapts evidence synthesis workflows for environmental, ecological, biomedical, and life-science questions. Use for PECO/PICO frameworks, exposure-outcome reviews, ecological heterogeneity, dose-response evidence, risk-of-bias planning, environmental indicators, organism/tissue/time-scale coding, food-system environmental nexus reviews, agroecosystem nutrient meta-analysis, environmental scenario modeling, land-use optimization, Pareto-frontier trade-off synthesis, policy trade-off synthesis, and domain-specific systematic review protocols.
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
- measurement method;
- bidirectional pathways, if impacts and feedbacks are both in scope;
- expected heterogeneity.

Load:

- `references/environmental-life-science.md` for domain heterogeneity.
- `references/cee-alignment.md` for environmental evidence standards.
- `references/agroecosystem-nutrient-meta-analysis.md` for crop yield, soil organic carbon, fertilizer, amendment, and nutrient-management meta-analyses.
- `references/food-system-bidirectional-nexus.md` for food-system reviews linking environmental pressures, feedbacks, trade, diets, crops, livestock, and aquatic foods.
- `references/environmental-scenario-synthesis.md` when a review builds a literature-derived database, machine-learning/spatial model, or policy scenario simulation.
- `references/land-use-optimization-tradeoffs.md` when a study uses multiobjective optimization, Pareto frontiers, land-use allocation, or food-water-carbon trade-off modeling.

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
Use `templates/food-environment-bidirectional-audit.md` and `templates/food-environment-pressure-schema.csv` for food-system nexus reviews.
Use `templates/dual-outcome-meta-audit.md` and `templates/nutrient-meta-extraction-schema.csv` for agroecosystem nutrient meta-analysis.
Use `templates/scenario-model-audit.md` and `templates/policy-scenario-matrix.csv` for scenario-model evidence synthesis.
Use `templates/pareto-frontier-audit.md` and `templates/multi-objective-tradeoff-schema.csv` for multiobjective optimization and land-use trade-off studies.

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
- Do not use vote-counting as evidence of effect direction or strength.
- Do not interpret short-term yield gains as soil-carbon sequestration evidence without duration, baseline SOC, depth, and measurement-method checks.
- Do not collapse fertilizer form, nutrient rate, baseline nutrient limitation, crop type, and climate into one pooled effect without moderator or subgroup logic.
- Do not describe food-system impacts in only one direction when the review question is bidirectional; map both pressure and feedback pathways.
- Do not treat global average food footprints as local risk without tracing trade, geography, vulnerability, and production-system context.
- Do not treat a machine-learning scenario projection as causal proof unless the design supports causal interpretation.
- Do not present a policy lever, such as recycling rate or intervention coverage, as sufficient without auditing implementation quality and compensating inputs.
- Do not treat a Pareto-efficient frontier as a politically feasible pathway without social, economic, governance, biodiversity, and transition-cost constraints.
- Do not collapse global objective gains into local welfare claims without regional supply, trade, livelihood, water-access, and justice checks.
