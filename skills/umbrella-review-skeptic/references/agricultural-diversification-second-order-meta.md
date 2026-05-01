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

## Supplementary Material Inventory

Nature supplies several distinct supplemental artifacts. Do not treat the reporting summary as the whole supplement.

- Supplementary Information: 27-page PDF with 12 supplementary figures and 13 supplementary tables.
- Peer Review File: reviewer reports and author rebuttals across three review rounds.
- Reporting Summary: 5-page transparency checklist repeating the statistical, software, data, sampling, and reproducibility declarations.
- Description of Additional Supplementary Files: 2-page file stating that Supplementary Data 1 lists all included meta-analysis studies.
- Supplementary Data 1: spreadsheet containing the 184 included meta-analysis citations.

Reusable Supplementary Information items:

- Figures 1-4: systematic-review overview, exact-duration sensitivity, vote counts for second-order meta-analysis, and vote counts for trade-off analysis.
- Figures 5-6: geographic distribution maps for all included meta-analyses and long-term records over 20 years; map source used `rnaturalearth`.
- Figure 7: PRISMA flow for search, screening, and extraction.
- Figures 8-9: funnel plots and influence/outlier checks.
- Figures 10-12: sensitivity analyses for repeated responses, high-quality-only data, exact-duration-only data, excluding a 100-year crop-yield point, and soil fertility without soil pH.
- Tables 1-5: model estimates, duration contrasts, practice-specific models, and multinomial yield-service trade-off models.
- Table 6: Web of Science and Scopus search string blocks.
- Table 7: seed second-order reviews/meta-analyses used for snowballing.
- Table 8: response-variable taxonomy for socioeconomic, biodiversity, soil, nutrient, carbon, and climate outcomes.
- Table 9: diversification-practice taxonomy.
- Table 10: eight-item meta-analysis quality scorecard.
- Table 11: selected random-effects structures and duration fixed-effect forms by outcome family.
- Tables 12-13: Egger regression and Rosenthal fail-safe N diagnostics.

## Supplementary Extraction Rules

When adapting this article into another environmental or agricultural second-order meta-analysis:

1. Start from a review-level protocol, not from individual primary-study pooling.
2. Keep the search blocks separable: intervention/practice terms, outcome/service terms, and study-type terms.
3. Require four inclusion anchors: meta-analysis design, eligible diversification practice, eligible outcome, and reported practice duration.
4. Convert `RR` and percent change to `LnRR` when mathematically defensible.
5. If SMD or Hedges' d cannot be converted to `LnRR` without original data, extract only direction and significance for vote-count or trade-off support.
6. For duration intervals, use the mean duration when exact durations are unavailable.
7. For open-ended durations such as `>x`, record the assumption explicitly; this article used `x + 2` years.
8. Assign repeated response variables to the closest primary outcome family and flag any repeated secondary use.
9. Check overlap before pooling: this article flagged meta-analyses sharing more than 30% of original studies and retained the most recent study when response variable and duration overlapped.
10. Treat the anonymized reproducibility dataset as reproducibility support, not as proof that the complete project dataset is public.

Use these bundled templates:

- `templates/agricultural-diversification-taxonomy.csv` for outcome and practice coding.
- `templates/second-order-quality-scorecard.csv` for review-level quality appraisal.
- `templates/second-order-model-spec-ledger.csv` for random-effects and duration-form extraction.
- `templates/second-order-peer-review-readiness-checklist.csv` for submission and revision planning.

## Peer Review Lessons

The peer-review history is useful as a writing checklist. Reviewers repeatedly pressed on issues that are predictable in second-order environmental meta-analysis:

- define broad intervention categories tightly enough that heterogeneous practices are not hidden under one label;
- justify outcome categories and repeated or ambiguous variables;
- mark sign reversals for costs, losses, emissions, pest pressure, damage, and other undesirable outcomes;
- show that search strings cover all practice categories, and use snowballing from related second-order reviews;
- make screening, extraction, coding, and primary-study deduplication auditable;
- explain why duration coding is defensible, then add exact-duration sensitivity checks;
- avoid extreme percentage claims in the abstract when they come from small baselines or sparse long-term data;
- compare linear and nonlinear duration forms before claiming temporal trends;
- separate fitted curves from raw-data support, especially in long-duration ranges with few records;
- discuss geographic, landscape, selection, and scale-up biases;
- treat crop yield carefully when rotations, non-productive land, and landscape-scale production differ from single-crop annual yield comparisons;
- discuss whether organic amendment rates and input sources are scalable;
- avoid saying evidence "allows" upscaling when the paper only supports or encourages it;
- acknowledge when data and code are anonymized, restricted, private during review, or incomplete.

Revision lesson: strong rebuttals usually changed the paper, not just the response letter. The authors added definitions, sensitivity analyses, maps, data/code access, model-selection details, clarified language, and more explicit limitations.

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

### OSF Code Dependency Inventory

A static scan of the OSF `R-scripts` folder found 12 R scripts. The declared active `library()` / `require()` calls are concentrated in `0-0-Packages.R`. No active `source()` calls were found, so script execution order should be inferred from file names and documented manually.

Use `templates/osf-r-dependency-inventory.csv` for the full dependency ledger.

Dependency tiers:

- paper-declared core packages: `metafor`, `orchaRd`, `ggplot2`, and `nnet`;
- OSF active declared packages: `R.rsp`, `cowplot`, `data.table`, `dplyr`, `effects`, `emmeans`, `ggeffects`, `ggplot2`, `ggpubr`, `glmmTMB`, `gridExtra`, `lme4`, `metafor`, `nnet`, `openxlsx`, `orchaRd`, `pacman`, `parameters`, `patchwork`, `performance`, `readxl`, `sjPlot`, `stringr`, `tidyr`, `tidyverse`, and `weightr`;
- namespace-only dependency detected in scripts: `broom`, via `broom::tidy()` and `broom::glance()`;
- commented or experimental packages not active in the loader: `brms`, `bayesplot`, `bayesmeta`, `rstanarm`, and `MetaSynthesis`; commented installation notes also mention `devtools` for installing `orchaRd` from GitHub.

Guardrail: an active package load is not the same as a confirmed function call in every downstream script. Treat this as a reproducibility dependency inventory, not as a minimal package set.

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
