# Method Sources

EvidenceForge is a skill/workflow project, not a replacement for formal methods guidance. This file records the methodological sources that shape the current skills.

## Workflow Inspiration

- Xu, Yiqing and Leo Yang Yang. *Scaling Reproducibility: An AI-Assisted Workflow for Large-Scale Replication and Reanalysis*.

EvidenceForge borrows the workflow architecture: skill contracts, explicit intermediate artifacts, AI orchestration separated from deterministic analysis, and human judgment kept visible.

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

