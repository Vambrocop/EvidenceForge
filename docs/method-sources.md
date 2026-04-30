# Method Sources

EvidenceForge is a skill/workflow project, not a replacement for formal methods guidance. This file records the methodological sources that shape the current skills.

## Workflow Inspiration

- Xu, Yiqing and Leo Yang Yang. *Scaling Reproducibility: An AI-Assisted Workflow for Large-Scale Replication and Reanalysis*.

EvidenceForge borrows the workflow architecture: skill contracts, explicit intermediate artifacts, AI orchestration separated from deterministic analysis, and human judgment kept visible. The meta-analysis and evidence-synthesis direction itself comes from the author's research experience and from the broader spread of meta-analysis beyond medicine into ecology, environment, life science, policy, and social science.

## Core Evidence-Synthesis Guidance

### PRISMA 2020

Source: [PRISMA 2020](https://www.prisma-statement.org/prisma-2020)

Use for:

- transparent reporting;
- checklist-driven manuscripts;
- abstract checklist;
- flow diagrams for original and updated reviews;
- making search, screening, inclusion, and synthesis decisions visible.

EvidenceForge implication: every review report should be able to produce a PRISMA-style account of search results, screening stages, exclusions, and included studies.

### Cochrane Handbook

Source: [Cochrane Handbook for Systematic Reviews of Interventions](https://training.cochrane.org/handbook/current)

Use for:

- planning a review;
- defining scope and inclusion criteria;
- searching and selecting studies;
- data collection;
- effect measures;
- risk of bias;
- meta-analysis;
- network meta-analysis;
- non-meta-analytic synthesis;
- missing-result bias;
- Summary of Findings and GRADE;
- interpreting results.

EvidenceForge implication: statistical synthesis should be chosen after the review question, eligibility, data extraction, risk-of-bias, and effect-measure decisions are clear.

### JBI Manual for Evidence Synthesis

Source: [JBI Manual for Evidence Synthesis](https://jbi-global.atlassian.net/wiki/spaces/MANUAL/overview)

Use for:

- broad evidence-synthesis methodology;
- systematic reviews of effectiveness, qualitative evidence, textual evidence, economic evidence, etiology/risk;
- mixed-methods reviews;
- umbrella reviews;
- scoping reviews;
- inclusive approaches across diverse questions and designs.

EvidenceForge implication: not every evidence project is a conventional intervention meta-analysis. The review type should match the question.

### Collaboration for Environmental Evidence

Source: [CEE Summary of Standards](https://environmentalevidence.org/standards-table/)

Use for:

- environmental systematic reviews and systematic maps;
- a priori protocols;
- PICO/PECO-style question elements;
- grey literature and supplementary searching;
- search comprehensiveness tests;
- dual screening and consistency checks;
- structured data extraction;
- critical appraisal;
- deciding when meta-analysis is inappropriate.

EvidenceForge implication: environmental and ecological reviews need explicit search transparency, geography/context fields, effect modifiers, study validity appraisal, and caution against vote-counting.

### Food-System Nexus Review Examples

Source: Mogollón et al. (2026), [*Broad bidirectional effects of global food production on the environment*](https://doi.org/10.1038/s43017-026-00778-y), Nature Reviews Earth & Environment.

Use for:

- food-system environmental pressure mapping;
- bidirectional links between production impacts and environmental feedbacks;
- separating crop, livestock, and aquatic/blue-food receptors;
- production-based and consumption-based accounting;
- trade displacement and embodied environmental impacts;
- supply-side, demand-side, adaptation, and circularity strategy maps.

EvidenceForge implication: food-system evidence synthesis should not stop at footprint accounting. Agents should map both directions: food production pressures on the environment and environmental degradation feedbacks on future production and food security.

### Food-Waste Geospatial ML Examples

Source: Uen and Rodriguez (2026), [*Geospatial analytics and machine learning for forecasting county-level food waste in U.S. Retail markets*](https://doi.org/10.1016/j.resconrec.2026.108906), Resources, Conservation and Recycling.

Use for:

- county-level food-waste forecasting;
- geospatial machine-learning audit;
- feature-importance interpretation for demographic, retail, expenditure, income, and social-program predictors;
- spatial validation and high-waste outlier checks;
- translating predictions into logistics, facility siting, waste-to-bioproduct systems, and circular bioeconomy planning.

EvidenceForge implication: food-waste ML studies need a planning-translation layer. Agents should distinguish generated waste from collectible and usable feedstock, and should not treat county-level model performance as enough for routing, facility siting, or policy claims without spatial and logistical validation.

### Agricultural ML Yield-Prediction Examples

Source: Wang et al. (2025), [*Integrating meteorological and breeding data to predict maize yields using machine learning algorithms*](https://doi.org/10.3389/fpls.2025.1722068), Frontiers in Plant Science.

Use for:

- crop-yield prediction with meteorological and breeding data;
- genotype-by-environment data integration;
- BLUP breeding values as model inputs;
- comparing Random Forest, XGBoost, SVR, and GPR;
- validation split and leakage auditing;
- feature-importance and partial-dependence interpretation;
- distinguishing operational prediction from causal agronomic explanation.

EvidenceForge implication: agricultural ML papers need model-audit templates that track site, year, genotype, weather windows, validation groups, and deployment claims. Random train/test accuracy is not enough when the claim involves new sites, years, genotypes, or future climates.

### Agroecosystem Nutrient Meta-Analysis Examples

Source: Liang and Schlesinger (2026), [*Potassium fertilization enhances both cereal yield and soil organic carbon: a meta-analysis*](https://doi.org/10.1038/s41467-026-71154-z), Nature Communications.

Use for:

- agricultural nutrient-management meta-analysis;
- crop yield and soil organic carbon as separate but policy-linked endpoints;
- response-ratio and percent-change interpretation;
- moderator extraction for climate, baseline soil status, and experimental duration;
- long-term evidence gates for soil-carbon claims;
- open data/code audit practices.

EvidenceForge implication: environmental meta-analysis often needs dual-outcome interpretation. A review may show a positive yield response and a smaller or slower soil-carbon response; the skill should keep time horizon, soil depth, baseline nutrient limitation, and study dependence visible.

### Environmental Scenario Modeling Examples

Source: Ba et al. (2026), [*Full Manure Recycling Risks an 18% Rise in China's Cropland N2O Emissions Without Improved Management*](https://doi.org/10.1111/gcb.70837), Global Change Biology.

Use for:

- literature-derived environmental databases;
- measurement-level extraction from many field studies;
- machine-learning prediction with validation;
- gridded spatial extrapolation;
- future policy scenario design;
- separating policy coverage from implementation quality.

EvidenceForge implication: environmental evidence synthesis sometimes needs a scenario-model audit rather than a pooled effect estimate. Agents should track database construction, model validation, spatial assumptions, scenario levers, uncertainty, and policy trade-offs.

### Land-Use Optimization and Pareto-Frontier Examples

Source: Bayer, Lautenbach, and Arneth (2023), [*Benefits and trade-offs of optimizing global land use for food, water, and carbon*](https://doi.org/10.1073/pnas.2220371120), PNAS.

Use for:

- multiobjective ecosystem-service optimization;
- Pareto-frontier / production-possibility frontier interpretation;
- dynamic vegetation model outputs as optimization inputs;
- food-water-carbon trade-off mapping;
- spatial priority maps and solution-agreement audits;
- separating theoretical biogeophysical option space from feasible policy pathways.

EvidenceForge implication: some environmental evidence projects should ask what the modeled option space is, not just what one scenario predicts. Agents should audit objective definitions, units, baselines, constraints, optimization algorithms, transition costs, omitted social constraints, and local-vs-global interpretation.

## Appraisal and Certainty

### AMSTAR 2

Source: [AMSTAR 2](https://www.amstar.ca/Amstar-2.php)

Use for:

- appraising systematic reviews of randomized and non-randomized healthcare intervention studies;
- identifying critical and non-critical weaknesses;
- confidence categories rather than a simple numerical score.

EvidenceForge implication: umbrella reviews should not treat all included reviews as equal. Review quality affects interpretation.

### ROBIS

Source: [ROBIS](https://www.riskofbias.info/welcome/robis-tool)

Use for:

- assessing risk of bias in systematic reviews themselves;
- review-of-reviews and umbrella-review contexts.

EvidenceForge implication: second-order synthesis must evaluate bias in the review process, not only bias in primary studies.

### GRADE

Source: [GRADE Handbook via Cochrane](https://training.cochrane.org/resource/grade-handbook)

Use for:

- rating certainty or confidence in evidence;
- Summary of Findings logic;
- distinguishing effect estimates from certainty of evidence.

EvidenceForge implication: a statistically significant pooled effect does not automatically mean high-certainty evidence.

## AI and Machine Learning Assistance

### ASReview

Source: [ASReview AI](https://asreview.nl/ai/)

Use for:

- active-learning screening;
- researcher/human-in-the-loop review;
- transparent logging of human and AI decisions;
- reproducible screening workflows.

EvidenceForge implication: ML assistance should prioritize and accelerate screening while preserving audit trails and human decision authority.

### Rayyan

Source: [Rayyan](https://www.rayyan.ai/)

Use for:

- systematic-review management;
- AI-assisted screening workflows;
- transparent review process support.

EvidenceForge implication: platform-specific workflows should still export decisions, exclusion reasons, and review logs.

## Books and Practical References

- Borenstein, Hedges, Higgins, and Rothstein, *Introduction to Meta-Analysis*.
- Cooper, Hedges, and Valentine, *The Handbook of Research Synthesis and Meta-Analysis*.
- Hedges and Olkin, *Statistical Methods for Meta-Analysis*.
- Harrer, Cuijpers, Furukawa, and Ebert, [*Doing Meta-Analysis with R*](https://bookdown.org/MathiasHarrer/Doing_Meta_Analysis_in_R/).
- Koricheva, Gurevitch, and Mengersen, *Handbook of Meta-analysis in Ecology and Evolution*.

EvidenceForge implication: future deterministic scripts should likely begin with R workflows around `metafor`, `meta`, `clubSandwich`, `robumeta`, and related packages, while preserving the skill layer as the human-readable contract.
