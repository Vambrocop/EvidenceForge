---
name: umbrella-review-skeptic
description: Reviews umbrella reviews and second-order meta-analyses. Use when synthesizing existing systematic reviews/meta-analyses, assessing primary-study overlap, duplicate evidence, review quality, AMSTAR/ROBIS-style concerns, discordant conclusions, temporal second-order meta-regression, ecosystem-service trade-offs, and whether review-level statistical pooling is defensible.
---

# Umbrella Review Skeptic

Use this skill when the evidence base already contains reviews or meta-analyses and the user wants to synthesize the syntheses.

## Core Principle

Do not simply average meta-analyses. Existing reviews often reuse the same primary studies, use different inclusion rules, and report non-comparable pooled effects.

## Intake

Identify:

- included reviews/meta-analyses;
- review questions;
- search dates;
- primary studies included in each review;
- pooled effects and metrics;
- quality assessment method;
- overlap among reviews;
- whether a second-order statistical synthesis is planned.

Load:

- `references/overlap-and-quality.md` for overlap and quality checks.
- `references/second-order-decision-rules.md` when deciding whether review-level pooling is defensible.
- `references/agricultural-diversification-second-order-meta.md` for long-term agricultural diversification, ecosystem-service, profitability, and yield trade-off synthesis.

## Workflow

1. Classify the project: umbrella review, review of reviews, or second-order meta-analysis.
2. Extract review-level characteristics.
3. Build a primary-study by review matrix.
4. Assess overlap and duplicate evidence.
5. Assess review quality and search currency.
6. Compare effect metrics and inclusion criteria.
7. Apply AMSTAR 2 / ROBIS-style review appraisal logic where appropriate.
8. Decide: narrative umbrella synthesis, evidence map, or second-order pooling.
9. If pooling, state dependence assumptions and model choice.
10. Report discordance and certainty.

Use `templates/overlap-matrix.md` for overlap tracking.
Use `templates/second-order-temporal-tradeoff-audit.md` and `templates/review-level-effect-schema.csv` for review-level temporal meta-regression and yield-service trade-off audits.
Use `templates/second-order-r-package-ledger.csv` when extracting software packages and model roles from a second-order meta-analysis.
Use `templates/second-order-quality-scorecard.csv`, `templates/second-order-model-spec-ledger.csv`, and `templates/agricultural-diversification-taxonomy.csv` when adapting agricultural diversification second-order meta-analysis protocols.

## Output Modes

### Umbrella Audit

```text
Review set:
Overlap risk:
Quality concerns:
Effect comparability:
Can pool statistically?
Preferred synthesis:
Main caution:
```

### Second-Order Meta Plan

```text
Review-level effect:
Primary-study overlap:
Dependence handling:
Quality weighting/sensitivity:
Model:
Interpretation limits:
```

### Temporal Trade-Off Audit

Use when the second-order synthesis asks how effects change over years or decades.

```text
Review-level evidence base:
Duration moderator:
Outcome families:
Review-level weights:
Random effects:
Primary-study overlap:
Trade-off categories:
Long-term research gaps:
Policy interpretation limits:
```

## Guardrails

- Do not double count the same primary studies.
- Do not pool reviews with incompatible effect metrics without justification.
- Do not treat many reviews as many independent bodies of evidence.
- Do not ignore older reviews being superseded by newer reviews.
- Do not call a narrative umbrella review a second-order meta-analysis.
- Do not assign a simple total score to review quality when the appraisal tool warns against it.
- Do not interpret review-level duration trends as primary-study causal effects without checking overlap, review scope, and the underlying time data.
- Do not collapse yield, profitability, biodiversity, soil quality, and climate mitigation into one sustainability score unless the weighting rule is explicit.
