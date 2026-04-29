# Golden Example: Minimal Meta-Analysis

## Input

`input/coding-sheet.csv` contains five mock primary-study effects using the same metric: `lnROM`.

## Expected Skill Behavior

When `meta-analysis-forge` is used, the agent should:

1. Confirm that all rows use one effect metric before pooling.
2. Check that `estimate` and `se` are present and numeric.
3. Notice that `risk_of_bias` includes mixed judgments.
4. Mention that the example does not solve dependent effects beyond a `dependency_group` field.
5. Recommend running the minimal R script only as a demonstration, not as final evidence.

## Example Run

```bash
Rscript skills/meta-analysis-forge/scripts/run_meta_analysis.R \
  --input examples/golden/meta-analysis-minimal/input/coding-sheet.csv \
  --outdir examples/golden/meta-analysis-minimal/output \
  --metric lnROM
```

Expected generated files:

- `meta-summary.txt`
- `model-results.csv`
- `forest-plot.pdf`
- `funnel-plot.pdf`

## Quality Check

The final answer should clearly separate:

- coding-sheet validity;
- statistical model execution;
- risk-of-bias concerns;
- substantive interpretation limits.
