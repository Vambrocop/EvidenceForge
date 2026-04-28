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

