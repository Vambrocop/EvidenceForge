---
name: evidence-synthesis-forge
description: Orchestrates systematic reviews, scoping reviews, evidence maps, meta-analyses, umbrella reviews, and AI-assisted evidence synthesis. Use when designing protocols, eligibility criteria, search strategies, screening workflows, coding manuals, effect-size plans, synthesis reports, or reproducible evidence-review packages.
---

# Evidence Synthesis Forge

Use this skill as the general orchestrator for evidence synthesis. It helps move from a broad review idea to an auditable protocol, screening workflow, extraction plan, synthesis strategy, and report structure.

## Core Principle

Separate:

1. **Question**: what evidence is being synthesized.
2. **Search**: how studies are found.
3. **Screening**: how studies are included or excluded.
4. **Coding**: how study features and effects are extracted.
5. **Synthesis**: whether evidence is narratively summarized, mapped, or statistically pooled.
6. **Judgment**: risk of bias, certainty, and interpretation.

Do not jump to meta-analysis before checking whether studies, outcomes, and effect sizes are comparable.

## Intake

Identify:

- domain: environment, ecology, medicine, life science, economics, policy, education, psychology, or other;
- review type: systematic review, scoping review, evidence map, rapid review, meta-analysis, umbrella review, or second-order meta-analysis;
- question framework: PICO, PECO, PICOS, SPIDER, or custom;
- population/exposure/intervention/comparator/outcome;
- eligible study designs;
- desired outputs;
- whether machine learning will assist screening or extraction.

If the user is unsure, propose a review type and explain the tradeoff.

## Workflow

1. Build the review question.
2. Define eligibility criteria.
3. Draft search strategy and databases.
4. Design screening stages and exclusion reasons.
5. Define extraction fields and coding rules.
6. Choose synthesis type: narrative, evidence map, first-order meta-analysis, umbrella review, or second-order meta-analysis.
7. Specify risk-of-bias or quality assessment.
8. Align the protocol and report with the relevant guidance source: PRISMA for reporting, Cochrane for intervention reviews, JBI for broader review types, CEE for environmental evidence.
9. Add reproducibility artifacts: search log, screening log, coding sheet, analysis script, protocol.

Load:

- `references/review-types.md` when the user needs help choosing review type or question framework.
- `references/protocol-reporting-crosswalk.md` when the user needs PRISMA/Cochrane/JBI/CEE alignment.

## Routing

- For statistical pooling, use `meta-analysis-forge`.
- For umbrella review or second-order meta-analysis, use `umbrella-review-skeptic`.
- For machine-learning assisted screening or extraction, use `meta-ml-screener`.
- For environmental, ecological, biomedical, or life-science reviews, use `environment-life-review-forge`.

## Output Modes

### Protocol Skeleton

Use `templates/evidence-protocol.md` for full protocols.

### Review Design Memo

Produce:

```text
Review type:
Question framework:
Eligibility criteria:
Search plan:
Screening workflow:
Extraction fields:
Synthesis plan:
Bias/quality assessment:
Reproducibility artifacts:
Risks:
```

### Audit

When reviewing an existing protocol or review, focus on:

- vague eligibility criteria;
- incomplete search;
- unlogged exclusions;
- incompatible outcomes;
- missing risk-of-bias assessment;
- naive pooling;
- hidden ML decisions;
- overclaiming.

## Guardrails

- Do not invent included studies.
- Do not invent search results.
- Do not invent effect sizes.
- Do not recommend statistical pooling when constructs or estimands are incompatible.
- Do not let machine learning replace final inclusion decisions without explicit protocol justification.
- Do not write conclusions before the protocol, search, screening, extraction, and appraisal logic are clear.
