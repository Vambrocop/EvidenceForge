# Clinical Meta-Analysis Patterns For Agri-Ecology

Source status: distilled from user-provided examples of high-impact medical systematic reviews and meta-analyses. Journal impact factors and article details were not independently verified here.

## Why This Belongs In EvidenceForge

Medical evidence synthesis is useful for agriculture and ecology because it has strong habits around:

- explicit PICO questions;
- intervention versus association separation;
- outcome hierarchy;
- risk-of-bias assessment;
- pre-specified subgroup analysis;
- transparent effect-size conversion;
- PRISMA-style reporting.

The objects differ, but the evidence logic transfers well.

```text
clinical patient -> crop, plot, site, species, ecosystem, watershed
intervention -> management, restoration, fertilizer, irrigation, biochar, diversification
control -> conventional practice, no treatment, baseline condition
clinical outcome -> yield, SOC, N2O, CH4, biodiversity, survival, disease, ecosystem service
prognostic factor -> soil trait, climate stress, landscape feature, initial biodiversity
```

## Four Transferable Templates

| Medical pattern | Example topic type | Agri-ecology translation | Typical effect sizes |
| --- | --- | --- | --- |
| Digital/intervention meta-analysis | intervention effects on psychological outcomes | digital agriculture, advisory tools, remote-sensing decision support, behavioral or management interventions | SMD, mean difference, log response ratio |
| Complication / burden meta-analysis | global complications among patients | prevalence of pest/disease, soil degradation, drought impact, methane hotspot occurrence, contamination burden | prevalence, logit prevalence, proportion, rate |
| RCT-only intervention meta-analysis | sleep interventions in youth with ADHD | randomized field/pot/greenhouse trials for fertilization, biochar, irrigation, diversification, pest control | mean difference, SMD, lnRR, lnROM |
| Prognostic association meta-analysis | biomarker or mucus plug associated with prognosis | baseline soil/plant/microbial/landscape indicators associated with yield stability, SOC change, disease risk, resilience | OR, RR, HR, correlation, Fisher z, regression beta |

## Translation From PICO To PECO/PICO

Clinical PICO:

```text
Population: adolescents and young adults with cancer
Intervention: digital health intervention
Comparator: usual care / no intervention
Outcome: psychological outcome
```

Agri-ecology PICO:

```text
Population: crop, soil, ecosystem, region, or management system
Intervention: biochar, manure, irrigation, diversification, restoration, precision tool
Comparator: conventional practice, no treatment, pre-intervention baseline
Outcome: yield, soil carbon, emissions, biodiversity, ecosystem service
```

Observational PECO:

```text
Population: sites, fields, species, ecosystems
Exposure: drought, warming, pollutant, soil trait, land-use intensity
Comparator: lower exposure / reference condition
Outcome: response variable or risk
```

## What To Borrow From Medical Meta-Analyses

1. **Outcome family separation**

Do not pool yield, SOC, N2O, biodiversity, and profit into one generic "sustainability" effect unless a defensible composite index is pre-specified.

2. **Design separation**

Keep randomized trials, observational field studies, greenhouse experiments, remote-sensing studies, and model simulations separate until heterogeneity is justified.

3. **Risk-of-bias discipline**

Clinical ROB tools translate into agriculture/ecology as:

```text
randomization -> plot/treatment allocation
allocation concealment -> less relevant, but blind measurement may matter
attrition -> missing plots, failed measurements, excluded sites
confounding -> soil, climate, management, socioeconomic selection
outcome measurement -> sensor, lab, model-derived outcome, observer bias
selective reporting -> only significant outcomes or time points reported
```

4. **Subgroup and moderator logic**

Pre-specify moderators:

```text
climate zone
soil texture / pH / baseline SOC
crop or species
management duration
experimental scale
study design
measurement method
region
```

5. **Certainty language**

Translate clinical "certainty of evidence" into:

```text
high: replicated randomized field evidence, consistent effect, low bias
moderate: consistent field evidence but some bias or heterogeneity
low: observational or greenhouse-only evidence, high heterogeneity
very low: sparse studies, strong publication bias, indirect outcome
```

## Effect-Size Choices

| Question | Preferred metric |
| --- | --- |
| treatment changes continuous outcome | log response ratio, mean difference, SMD |
| intervention changes risk/event | RR, OR, risk difference |
| prevalence/burden | logit-transformed proportion or generalized mixed model |
| association between trait and outcome | Fisher z correlation, beta, OR/RR |
| time-to-event or survival | HR where available; otherwise survival proportion or rate |
| multiple effects per study | multilevel meta-analysis or robust variance estimation |

## Agriculture/Ecology Examples

Medical intervention template:

```text
Do digital advisory tools improve fertilizer-use efficiency or farmer adoption outcomes?
```

Medical complication template:

```text
What is the pooled prevalence of crop disease, pest outbreak, soil contamination,
or methane-emission hotspot occurrence across regions?
```

RCT-only intervention template:

```text
What is the effect of biochar, potassium fertilization, irrigation, or diversification
on crop yield and soil carbon in randomized experiments?
```

Prognostic association template:

```text
Which baseline soil, microbial, landscape, or climate indicators predict yield stability,
carbon persistence, disease risk, or ecosystem-service decline?
```

## Guardrails

- Do not import clinical hierarchy mechanically; agricultural field realism may matter more than laboratory control.
- Do not mix greenhouse, pot, field, and remote-sensing outcomes without design moderators.
- Do not treat observational prognostic associations as intervention effects.
- Do not let a pooled global estimate hide region-specific agronomic or ecological constraints.
- Do not overuse "high evidence" language when most primary studies lack randomization or long-term follow-up.

## Reusable Skill Rule

When borrowing from medical systematic reviews:

```text
1. identify whether the review is intervention, burden/prevalence, RCT-only, or prognostic;
2. translate PICO into agri-ecology PICO/PECO;
3. preserve outcome families;
4. separate study designs;
5. choose effect sizes before extraction;
6. map clinical risk-of-bias items to field-study bias;
7. pre-specify moderators;
8. report certainty with ecological realism.
```
