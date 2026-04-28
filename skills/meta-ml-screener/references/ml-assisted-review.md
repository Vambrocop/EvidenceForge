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

Tools such as ASReview and Rayyan show the practical model: AI prioritizes, suggests, classifies, or accelerates, while humans keep final responsibility for inclusion/exclusion decisions.

## Validation

For screening:

- use a human-labeled seed set;
- validate recall on a held-out set or through dual screening;
- keep uncertain records for human review;
- report stopping rule.
- export model scores and human decisions;
- preserve exclusion reasons.

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

## Failure Modes

- automation excludes relevant studies without human review;
- model learns from inconsistent eligibility labels;
- LLM extracts plausible but unsupported numbers;
- model scores are not exported;
- prompt/model version is not recorded;
- ML-discovered moderators are reported as confirmed findings.
