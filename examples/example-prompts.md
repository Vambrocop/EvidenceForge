# Example Prompts

## Systematic Review

```text
Use evidence-synthesis-forge to design a protocol for a systematic review on air pollution exposure and cardiovascular outcomes. Include PECO, eligibility criteria, databases, screening process, extraction fields, risk-of-bias assessment, and synthesis plan.
```

```text
Use evidence-synthesis-forge to create a PRISMA-style flow-count CSV and generate a Mermaid flow diagram from the current screening counts.
```

## Meta-Analysis

```text
Use meta-analysis-forge to create an effect-size coding sheet and random-effects meta-analysis plan for studies reporting log odds ratios, hazard ratios, and standardized mean differences.
```

```text
Use meta-analysis-forge to validate this coding sheet against the CSV schema, then tell me whether it is safe to run the minimal R script.
```

```text
Use meta-analysis-forge to audit whether this project is a true mega-analysis, IPD meta-analysis, or ordinary aggregate-data meta-analysis. Build a dataset inventory and flag harmonization risks.
```

## Umbrella Review / Second-Order Meta

```text
Use umbrella-review-skeptic to audit whether existing meta-analyses on microplastics and fish physiological outcomes can be statistically synthesized. Focus on primary-study overlap and review quality.
```

## ML-Assisted Review

```text
Use meta-ml-screener to design an active-learning workflow for title/abstract screening. Include human verification, recall checks, audit logs, and failure modes.
```

```text
Use meta-ml-screener to audit this screening-log CSV. Check whether every exclusion has a reason and whether final decisions remain human-verifiable.
```

## Environment / Life Science

```text
Use environment-life-review-forge to build a PECO framework and extraction table for a review of pesticide exposure and soil microbial diversity.
```

```text
Use environment-life-review-forge to design an agroecosystem nutrient meta-analysis on potassium fertilization, cereal yield, and soil organic carbon. Build a dual-outcome audit and a nutrient-meta extraction schema, and flag duration, soil-depth, baseline nutrient status, and climate moderators.
```

```text
Use environment-life-review-forge to audit a paper that compiles field-study measurements, trains machine-learning models, maps national environmental risk, and simulates policy scenarios. Build a scenario-model audit and a policy scenario matrix that separate policy coverage from implementation quality.
```

```text
Use environment-life-review-forge to audit a land-use optimization paper that estimates a Pareto frontier for food, water, and carbon. Build a pareto-frontier audit, a multi-objective trade-off schema, and guardrails separating theoretical option space from feasible policy pathways.
```
