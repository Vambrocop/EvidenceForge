# Golden Example: ML Screening Log Audit

## Input

`input/screening-log.csv` contains four mock records from an ML-assisted title/abstract screening workflow.

## Expected Skill Behavior

When `meta-ml-screener` is used, the agent should:

1. Verify that every record has a human decision.
2. Check that excluded records have exclusion reasons.
3. Identify that ML labels are advisory and not final decisions.
4. Note that duplicate records require traceable deduplication.
5. Report that `maybe` and `retrieve_full_text` records need human follow-up.
6. Preserve reviewer accountability.

## Expected Audit Summary

```text
Records audited: 4
Human decisions present: yes
ML-only exclusions: none
Records needing follow-up: R001, R002
Duplicate handling present: R004 marked duplicate
Main risk: ML score interpretation and deduplication provenance need protocol-level documentation
```

## Quality Check

The final answer should not say that ML has decided inclusion. It should say that ML prioritized or suggested labels, while humans made or still need to make final decisions.
