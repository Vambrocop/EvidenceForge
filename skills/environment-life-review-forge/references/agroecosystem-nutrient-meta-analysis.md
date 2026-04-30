# Agroecosystem Nutrient Meta-Analysis

Use this reference for meta-analyses of fertilizer, manure, compost, biochar, liming, nutrient limitation, crop yield, soil organic carbon, greenhouse-gas emissions, microbial outcomes, and soil health.

## Running Example

Liang and Schlesinger (2026), "Potassium fertilization enhances both cereal yield and soil organic carbon: a meta-analysis," Nature Communications, is a useful model article for this pattern.

Core extractable facts:

- domain: agroecosystem nutrient management;
- intervention: potassium fertilization;
- population/context: cereal croplands and agricultural ecosystems;
- sample size: 1185 observations;
- outcomes: cereal yield and soil organic carbon (SOC);
- headline effects: yield +19.3%; SOC +4.4%;
- moderators: mean annual precipitation for yield response; experimental duration for SOC response;
- time-scale finding: SOC increase is significant only after long-term potassium fertilization longer than 20 years;
- data/code: Zenodo DOI 10.5281/zenodo.18839011; related Mendeley dataset DOI 10.17632/n7jmsbh9w6.2;
- method cue: meta-analysis with open data/code and a clear moderator story.

Source links:

- Article: https://doi.org/10.1038/s41467-026-71154-z
- Zenodo data/code: https://doi.org/10.5281/zenodo.18839011
- Mendeley dataset record: https://data.mendeley.com/datasets/n7jmsbh9w6

## What To Extract

A nutrient meta-analysis should extract both treatment-comparison statistics and context variables.

Treatment and comparator:

- nutrient or amendment form;
- nutrient rate and unit;
- application timing and frequency;
- single nutrient or combined N/P/K/organic treatment;
- comparator nutrient background;
- co-applied inputs;
- agronomic recommendation or local practice status.

Outcome:

- yield type: grain, biomass, aboveground production, crop-specific yield;
- soil carbon metric: SOC, SOM, soil carbon stock, concentration;
- soil depth and bulk-density handling;
- greenhouse-gas or nutrient-loss endpoint if present;
- microbial or soil-health endpoint if present;
- measurement method and units;
- duration and sampling window.

Context and moderators:

- crop species or crop group;
- country, region, coordinates, or climate zone;
- mean annual precipitation and temperature;
- soil texture, pH, baseline SOC/SOM, available K, N, P;
- irrigation and residue management;
- experimental design, plot scale, replication;
- study duration and whether it is long-term.

## Effect Metrics

Common metrics:

- log response ratio, often converted to percent change by `100 * (exp(lnRR) - 1)`;
- mean difference when units are harmonized;
- standardized mean difference when constructs are comparable but units differ;
- correlation or regression slopes for moderator analyses;
- separate effect metrics for yield, SOC, emissions, and microbial outcomes.

Do not mix yield response ratios with SOC stock changes in one pooled effect. Treat them as separate outcome families, even when the policy question requires both.

## Dual-Outcome Interpretation

Nutrient-management evidence often has more than one endpoint. A useful synthesis should distinguish:

- productivity effect;
- soil-carbon or soil-health effect;
- emission or pollution trade-off;
- required time horizon;
- geography and baseline-nutrient limitation;
- whether the same studies report both outcomes.

Interpretation template:

```text
The intervention appears productivity-positive under [context], but the soil-carbon conclusion requires [duration/depth/baseline/method] evidence. The policy claim is strongest where [nutrient limitation and climate condition] apply, and weakest where [missing moderator or incompatible endpoint] dominates.
```

## Quality Gates

Before pooling, check:

- comparable crops or defensible crop grouping;
- treatment and comparator have clear nutrient background;
- outcome units and soil-depth conventions are harmonized;
- duration is coded, especially for SOC;
- multiple observations from the same paper are not treated as independent without a dependence plan;
- response-ratio calculations preserve original means, SD/SE/CI, and sample sizes;
- moderator analyses are not written as causal unless design supports it;
- open data/code are audited before reuse.

## Guardrails

- Do not infer climate mitigation from SOC concentration alone without stock/depth context.
- Do not claim nutrient policy generality without baseline nutrient limitation.
- Do not compare short-term crop-yield response and long-term SOC response as if they share the same time horizon.
- Do not pool organic amendments and mineral fertilizer unless the estimand explicitly allows that grouping.
- Do not use a significant moderator as a mechanistic proof without agronomic reasoning.
