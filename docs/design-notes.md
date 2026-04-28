# EvidenceForge Design Notes

EvidenceForge uses `evidence` in the broad evidence-synthesis sense: primary studies, review articles, effect sizes, study quality, bias assessments, heterogeneity, and the strength of conclusions.

## Name

`EvidenceForge` is intentionally broader than `MetaForge` or `MetaAnalysisForge`.

Meta-analysis is one statistical step. Evidence synthesis includes protocol design, search, screening, coding, risk-of-bias assessment, narrative synthesis, evidence mapping, umbrella review, and machine-learning assistance.

## Core Separation

The project separates:

- search from screening;
- screening from inclusion;
- extraction from verification;
- statistical pooling from interpretation;
- ML assistance from human judgment;
- first-order meta-analysis from second-order/umbrella review.

## Human Explanation of Evidence

In this repository, evidence means the organized research base behind a claim. A single paper is one piece of evidence. A meta-analysis is one way to synthesize evidence. An umbrella review is a way to compare multiple syntheses. Machine learning may help handle the literature volume, but it is not itself the evidence.

EvidenceForge is therefore named broadly: it covers more than statistical meta-analysis. It covers the full pathway from scattered studies to an auditable conclusion.

## Origin and Relation to Scaling Reproducibility

The substantive meta-analysis direction comes from the author's research experience: meta-analysis was once viewed by many researchers as mainly a medical method, but it has since spread widely into ecology, environment, life science, policy, and social-science evidence work. EvidenceForge treats that trend as a reason to build clearer, auditable workflows for systematic review and evidence synthesis.

The project borrows the workflow pattern from *Scaling Reproducibility: An AI-Assisted Workflow for Large-Scale Replication and Reanalysis*:

- orchestrator vs deterministic execution;
- skill descriptions as interface contracts;
- failure patterns as reusable knowledge;
- explicit intermediate artifacts;
- human review for scientific judgment.

The paper is an architecture inspiration, not the source of the meta-analysis idea.

EvidenceForge adapts this pattern to systematic review and evidence synthesis.

## Initial Scope

The first version covers:

- systematic review;
- scoping review;
- evidence map;
- meta-analysis;
- second-order meta-analysis;
- umbrella review;
- machine-learning assisted screening/extraction;
- environmental and life-science review design.

Full omics analysis workflows are deliberately out of scope for now. Omics evidence synthesis may be added later as a domain extension.
