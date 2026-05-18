# Ant Soil Carbon Meta-Analysis

Use this reference for environmental and ecological reviews where animals act as soil engineers and the evidence spans both carbon storage and carbon flux.

## Running Example

Wang, Fan, Zamanian, Yin, Kuzyakov, and Kardol (2026), "A meta-analysis of ant-mediated effects on soil carbon cycling and organic matter stability," Nature Communications.

Core extractable facts from the article page, abstract, and supplementary information:

- evidence base: 136 studies and 2232 observations;
- focal process: ant-mediated effects on soil carbon cycling and organic matter stability;
- outcome families: SOC storage, CO2 emissions, and organic matter processing or stability;
- headline effects: SOC storage +22%; CO2 emissions +84%;
- trait logic: ant species and nesting strategies are key mediators;
- climate logic: climate indirectly shapes organic matter processing through ant functional traits;
- context pattern: SOC effects are especially pronounced in mid-latitude ecosystems with low initial SOC;
- documentation available on the journal page: Supplementary Information, Reporting Summary, and Transparent Peer Review.
- methodological pattern: meta-analysis is combined with mixed-effects meta-regression, nested dependence handling, sensitivity analysis, random forest driver ranking, and PLS-PM path-model interpretation.

Source:

- Article: https://doi.org/10.1038/s41467-026-72626-y

## Why This Pattern Is Useful

This paper is a strong model for ecology reviews because it does not force all endpoints into a single direction of effect.

It shows how to keep separate:

- carbon storage;
- carbon emissions;
- organic matter stability and processing;
- organism functional traits;
- climate context.

That separation is exactly what an environmental synthesis skill should preserve.

It is also useful as a research-paradigm case: classical meta-analysis estimates effects, random forest ranks candidate drivers, and PLS-PM organizes plausible indirect pathways among climate, ecosystem, soil properties, ant traits, and carbon outcomes.

## What To Extract

Biological structure:

- focal fauna;
- species or species group;
- nesting strategy or engineering type;
- respiration, mixing, transport, or decomposition pathway.

Carbon outcomes:

- SOC stock or concentration endpoint;
- CO2 or other gas-flux endpoint;
- organic matter stability indicator;
- depth, time window, and method.

Context and moderators:

- climate zone or latitude;
- ecosystem or land-use type;
- initial SOC or baseline soil condition;
- geography;
- measurement setting.

Interpretation structure:

- whether stock and flux are interpreted jointly or separately;
- whether trait moderators are confirmatory or exploratory;
- whether climate is treated as direct or indirect context.

Method structure:

- whether `LnRR`, Hedges' `d`, or another effect-size family is used;
- whether multilevel or nested random effects handle multiple observations per reference;
- whether a VCV matrix, robust variance, or sensitivity analysis is used for dependence;
- whether random forest is used for predictor ranking;
- whether path modeling is PLS-PM, SEM, or another framework;
- whether the path model is exploratory or causal.

## Guardrails

- Do not treat SOC storage and CO2 emissions as exchangeable endpoints.
- Do not simplify "ants increase SOC and CO2" into a contradictory result; it reflects different carbon-pathway components.
- Do not write trait effects as causal mechanisms unless the evidence supports that wording.
- Do not present random forest importance or PLS-PM paths as causal mechanism proof without design support.
- Do not generalize the mid-latitude or low-SOC pattern to all systems.
