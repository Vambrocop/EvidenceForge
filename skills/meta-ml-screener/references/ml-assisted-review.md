# ML-Assisted Review

## Valid ML Roles

ML can help with:

- prioritizing screening;
- deduplication;
- classifying study design;
- tagging exposures/outcomes;
- identifying candidate effect sizes;
- extracting structured fields;
- clustering topics;
- discovering candidate moderators.

## Validation

For screening:

- use a human-labeled seed set;
- validate recall on a held-out set or through dual screening;
- keep uncertain records for human review;
- report stopping rule.

For extraction:

- require source page or quote;
- validate numerical fields manually or with scripts;
- track confidence and unresolved fields.

For moderator discovery:

- mark as exploratory;
- use cross-validation when possible;
- avoid causal language.

## Reporting

Report:

- ML task;
- model/tool;
- version/date;
- training labels;
- validation metric;
- human verification;
- how disagreements were resolved.

