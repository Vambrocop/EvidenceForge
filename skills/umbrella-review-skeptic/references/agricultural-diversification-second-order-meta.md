# Agricultural Diversification Second-Order Meta-Analysis

Use this reference for second-order meta-analyses that synthesize existing meta-analyses on agricultural diversification, agroecology, ecosystem services, profitability, biodiversity, and long-term trade-offs.

## Running Example

Raveloaritiana and Wanger (2026), "Long-term agricultural diversification increases financial profitability, biodiversity, and ecosystem services: a second-order meta-analysis," Nature Communications, is a useful model article for this pattern.

Core extractable facts:

- article type: open-access research article;
- journal: Nature Communications;
- volume/article: 17, Article 1016;
- published: 26 January 2026;
- DOI: https://doi.org/10.1038/s41467-025-67757-7;
- evidence base: 184 meta-analyses, 6741 effect sizes, and 17,989 original studies;
- time scope: diversification effects up to 120 years;
- effect metric: log response ratio (`LnRR`);
- model family: second-order hierarchical meta-regression;
- software: R 4.4.3, `metafor`, `orchaRd`, `ggplot2`, and `nnet` for multinomial trade-off models;
- weighting: review-level effect sizes weighted by number of underlying comparisons;
- outcomes: crop yield, financial profitability, biodiversity, pollination, pest control, water regulation, soil fertility, nutrient cycling, carbon sequestration, and climate regulation;
- headline finding: benefits increased for six out of ten socioeconomic/environmental factors in the long term;
- 20-year results visible in the article: financial profitability +189%, biodiversity +64%, pollination +629% over 10 years, and soil/climate-related benefits about +37% to +107% over 20 years;
- crop yield: no significant change over time in the aggregate analysis;
- trade-off result: yield-service win-win outcomes were likely during the first decades, while lose-yield/win-service outcomes became more likely later for some services;
- data/code: anonymized reproducibility dataset and R code deposited in OSF, DOI 10.17605/OSF.IO/ZPR6A.

Source links:

- Article: https://doi.org/10.1038/s41467-025-67757-7
- Open article mirror: https://pmc.ncbi.nlm.nih.gov/articles/PMC12847752/
- OSF data/code: https://doi.org/10.17605/OSF.IO/ZPR6A

## Why This Pattern Matters

This pattern is more than a conventional umbrella review. It asks whether the conclusions of many meta-analyses change when time is modeled explicitly.

The key question is:

```text
Do review-level effects of agricultural diversification become stronger, weaker, or trade off differently as the duration of diversification increases?
```

## Workflow

1. Classify each included record as a meta-analysis or related quantitative synthesis.
2. Extract the review-level effect size, metric, outcome family, diversification practice, duration, and number of underlying comparisons.
3. Build a primary-study overlap matrix when identifiers are available.
4. Assess review-level quality, search currency, and eligibility differences.
5. Harmonize effect metrics, especially `LnRR`, percent-change interpretations, and outcome-family definitions.
6. Model duration as a moderator, checking linear, quadratic, cubic, or quartic forms when justified.
7. Use random effects for study/review and effect-size IDs where needed.
8. Weight review-level estimates transparently, such as by number of underlying comparisons.
9. Analyze trade-offs separately from single-outcome meta-regression.
10. Report research gaps by duration, geography, practice, and outcome.
11. Interpret second-order results as synthesis-of-syntheses evidence, not direct primary-study causal evidence.

## R Package And Model Workflow

The article's visible methods and references identify this package workflow:

| Stage | Package / tool | Role | Audit question |
|---|---|---|---|
| Environment | R 4.4.3 | Analysis environment | Is the R version captured in reproducibility files? |
| Meta-regression | `metafor` | Fit second-order hierarchical meta-regression models | Are random effects, weights, moderators, and AIC comparisons reproducible? |
| Model extraction / visualization support | `orchaRd` | Extract and visualize meta-analysis model outputs, especially orchard-style summaries | Are plotted estimates traceable to fitted model objects? |
| Figure construction | `ggplot2` | Build manuscript figures and ribbons | Are figure data and code deposited? |
| Trade-off classification model | `nnet` | Fit multinomial models for win/lose yield-service categories | Are outcome categories and weights defined before modeling? |
| Bias diagnostics | `metafor` / meta-analysis diagnostics | Funnel plots, Egger tests, fail-safe N, influence checks | Are small-study bias and influential effects checked by outcome family? |

In this pattern, software extraction should not stop at package names. Record the role of each package, the model object it produces, and the audit artifact it should leave behind.

### Model Steps To Reproduce Conceptually

1. Prepare review-level `LnRR` effect sizes and uncertainty.
2. Weight each effect by the number of underlying comparisons.
3. Select random effects by comparing null models with AIC.
4. Fit non-temporal reference models for each outcome family.
5. Add duration as moderator.
6. Compare linear, quadratic, cubic, and quartic duration forms using AIC.
7. Run bias diagnostics: funnel plot, Egger regression, fail-safe N, standardized residuals, and hat values.
8. Run sensitivity datasets:
   - no repeated responses;
   - high-quality studies only;
   - high-quality plus no repeated responses;
   - exact-duration records only;
   - excluding the single 100-year crop-yield point;
   - soil fertility without soil pH.
9. For yield-service trade-offs, classify paired effects into four win/lose categories.
10. Fit multinomial trade-off models with `nnet`, duration moderator, paired yield-service structure, and comparison-based weights.

### Package Guardrails

- Do not cite `metafor` alone as proof of a valid second-order meta-analysis; overlap, quality, and dependence still matter.
- Do not treat `orchaRd` plots as analysis results independent of the fitted model.
- Do not interpret `nnet` multinomial trade-off probabilities as welfare or policy choice without a separate value framework.
- Do not rely on package defaults without recording random-effects structure, weights, and moderator form.
- Do not claim full reproducibility if only an anonymized dataset is public and the complete dataset is restricted.

## Outcome Families

Socioeconomic:

- crop yield;
- financial profitability.

Biological communities:

- biodiversity;
- pollination;
- pest control.

Soil quality:

- water regulation;
- soil fertility;
- nutrient cycling.

Climate mitigation/regulation:

- carbon sequestration;
- climate regulation.

Diversification practice examples:

- crop diversification;
- non-crop diversification;
- organic amendments;
- organic farming;
- reduced tillage;
- soil inoculation or related practices.

## Trade-Off Categories

For paired yield-service evidence, keep categories explicit:

- win yield / win service;
- win yield / lose service;
- lose yield / win service;
- lose yield / lose service.

Do not treat these as equivalent to welfare, profitability, or food security without a separate weighting and policy framework.

## Quality And Overlap Checks

Audit:

- whether included meta-analyses reuse the same primary studies;
- whether long-term primary studies are underrepresented;
- whether short-term syntheses dominate the evidence base;
- whether geography is skewed toward Europe, North America, or Asia;
- whether Africa and other underrepresented regions are visible;
- whether outcome definitions differ across reviews;
- whether review-level weights overrepresent large but low-quality syntheses;
- whether the complete dataset is public or only an anonymized reproducibility subset is deposited.

## Interpretation Rules

- A second-order meta-analysis can support a broad evidence pattern, but it does not replace a primary-study-level reanalysis.
- Long-term gains should be tied to duration and practice type; do not imply all diversification practices work equally.
- "No significant yield effect" is not the same as "no yield trade-off anywhere."
- Profitability, biodiversity, soil quality, and carbon sequestration need separate outcome-specific interpretation.
- Policy recommendations should mention implementation context, compensation for possible yield gaps, regional adaptation, and evidence gaps.
