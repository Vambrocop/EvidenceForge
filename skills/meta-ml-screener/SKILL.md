---
name: meta-ml-screener
description: Designs machine-learning assisted systematic review workflows. Use for active-learning screening, deduplication, study classification, LLM-assisted extraction, risk-of-bias triage, topic modeling, moderator discovery, and audit logs, while preserving human verification and transparent evidence-synthesis decisions.
---

# Meta ML Screener

Use this skill when machine learning will assist a systematic review or meta-analysis.

## Core Principle

ML can reduce workload, prioritize records, extract candidates, and explore heterogeneity. It should not hide eligibility criteria, final inclusion decisions, or effect-size verification.

## Intake

Identify the ML task:

- deduplication;
- title/abstract screening;
- full-text triage;
- study design classification;
- outcome classification;
- extraction assistance;
- risk-of-bias triage;
- topic modeling;
- moderator discovery.

Identify:

- labeled data available;
- human verification plan;
- recall requirement;
- audit log format;
- software or platform;
- whether LLMs are used.

Load `references/ml-assisted-review.md` for task-specific guidance.

## Workflow

1. Define ML role and what decisions remain human.
2. Create seed labels or validation set.
3. Define features, model, or prompt schema.
4. Run prioritization/classification/extraction.
5. Record scores, labels, and decisions.
6. Validate recall or extraction accuracy.
7. Escalate uncertain records to human review.
8. Report ML use transparently.

Use `templates/screening-log.md` for logging.

## Output Modes

### ML Screening Plan

```text
ML task:
Human decision point:
Training/seed labels:
Validation metric:
Audit log:
Stopping rule:
Failure modes:
Reporting sentence:
```

### Extraction Schema

```text
Field:
Definition:
Source anchor:
Confidence:
Human verification:
```

## Guardrails

- Do not exclude records solely because the model is confident unless the protocol explicitly allows it and recall is validated.
- Do not use LLM-extracted numbers without source anchors and verification.
- Do not treat ML-discovered moderators as confirmatory.
- Do not hide prompt/model/version details if they affect review decisions.

