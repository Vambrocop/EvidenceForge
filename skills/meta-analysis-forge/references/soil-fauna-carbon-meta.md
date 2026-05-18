# Soil Fauna Carbon Meta-Analysis

Use this reference when a meta-analysis studies how soil fauna or ecosystem engineers affect both carbon storage and carbon fluxes.

## Running Example

Wang et al. (2026), "A meta-analysis of ant-mediated effects on soil carbon cycling and organic matter stability," Nature Communications, is a strong template for this pattern.

Core extractable facts from the article page, abstract, and supplementary information:

- domain: soil ecology and biogeochemistry;
- focal engineer: ants;
- evidence base: 136 studies and 2232 observations worldwide;
- outcome families: soil organic carbon storage, CO2 emissions, and organic matter stability or processing;
- headline effects: SOC storage +22%; CO2 emissions +84%;
- mechanism cue: ant respiration is highlighted as the main contributor to the CO2 increase;
- key moderators: ant species, nesting strategy, climate, and initial SOC;
- context cue: stronger SOC effects in mid-latitude ecosystems with low initial SOC;
- open-science cue: the Nature Communications page provides Supplementary Information, Reporting Summary, and a Transparent Peer Review file.
- method-stack cue: the supplementary information reports mixed-effects meta-regressions, nested random-effects structure selection, funnel plots, Egger tests, fail-safe numbers, sensitivity analyses, linear/nonlinear AIC comparisons, random forest relative importance, and PLS-PM path-model outputs.

Source:

- Article: https://doi.org/10.1038/s41467-026-72626-y

## Why This Example Matters

This pattern is methodologically useful because it forces a meta-analysis to keep different outcome families separate:

- carbon stock;
- carbon flux;
- organic matter stability or processing;
- trait and climate moderators.

The important lesson is that a soil-fauna meta-analysis can find more stored carbon and more emitted CO2 at the same time. This is not a contradiction. It means the study is tracing different parts of the carbon pathway.

## What To Extract

Outcome family and effect interpretation:

- stock versus flux versus stability endpoint;
- effect-size metric used for each family;
- whether percent change is derived from log response ratios;
- time window and measurement depth;
- whether the same paper reports multiple endpoint families.

Biological and functional moderators:

- focal taxon or species group;
- nesting strategy or functional trait group;
- soil disturbance pathway;
- respiration versus redistribution versus stabilization mechanism.

Environmental moderators:

- climate zone or latitude;
- initial SOC;
- ecosystem type or land use;
- measurement context and baseline condition.

Dependence structure:

- multiple outcomes per study;
- multiple species or nest types per study;
- repeated depth layers or time points;
- whether dependence is modeled or ignored.

Method stack:

- effect-size metric for each endpoint family, including whether `LnRR` or standardized effect sizes are used;
- random-effects structure, including whether `reference/obs` or a similar nested structure is used;
- whether a VCV matrix, robust variance estimation, or sensitivity analysis is needed;
- random-forest variables and relative-importance rankings;
- path-model type, such as PLS-PM, and whether it is interpreted as exploratory, mechanistic, or causal.

## Quality Gates

Before pooling, check:

- stock and flux outcomes are not pooled into one summary effect;
- organic matter stability is not treated as numerically interchangeable with SOC stock;
- trait moderators are coded before meta-regression;
- climate or latitude gradients are not written as causal on their own;
- same-study multiple endpoints have a dependence plan;
- source anchors exist for abstract, supplement, and, when useful, peer review clarifications.

## Guardrails

- Do not write "ants increase soil carbon" as a single undifferentiated conclusion.
- Do not merge SOC stock and CO2 emission effects into one ecological score.
- Do not interpret functional-trait moderators as proof of mechanism unless the evidence supports that leap.
- Do not treat random forest variable importance or PLS-PM paths as causal proof without design support.
- Do not treat stronger effects at low baseline SOC or mid-latitudes as universal across ecosystems.
