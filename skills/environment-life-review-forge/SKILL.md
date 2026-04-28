---
name: environment-life-review-forge
description: Adapts evidence synthesis workflows for environmental, ecological, biomedical, and life-science questions. Use for PECO/PICO frameworks, exposure-outcome reviews, ecological heterogeneity, dose-response evidence, risk-of-bias planning, environmental indicators, organism/tissue/time-scale coding, and domain-specific systematic review protocols.
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
- expected heterogeneity.

Load:

- `references/environmental-life-science.md` for domain heterogeneity.
- `references/cee-alignment.md` for environmental evidence standards.

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

## Guardrails

- Do not pool across species, exposure windows, or outcome constructs without a biological or environmental rationale.
- Do not collapse mechanistic, observational, and experimental evidence without design labels.
- Do not hide geography, climate zone, tissue type, or measurement platform when they drive heterogeneity.
- Do not use vote-counting as evidence of effect direction or strength.
