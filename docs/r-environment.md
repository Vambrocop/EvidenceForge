# R Environment

EvidenceForge can be used as a pure workflow skill repository, but the meta-analysis examples become more useful with a small R environment.

## Minimal Requirement

For the current minimal meta-analysis script:

```r
install.packages("metafor")
```

Or run:

```bash
Rscript skills/meta-analysis-forge/scripts/install_r_packages.R
```

## Minimal Run

```bash
Rscript skills/meta-analysis-forge/scripts/run_meta_analysis.R \
  --input examples/golden/meta-analysis-minimal/input/coding-sheet.csv \
  --outdir examples/golden/meta-analysis-minimal/output \
  --metric lnROM
```

Expected outputs:

- `meta-summary.txt`
- `model-results.csv`
- `forest-plot.pdf`
- `funnel-plot.pdf`

## Validation Before R

Run the coding-sheet validator first:

```bash
python skills/meta-analysis-forge/scripts/validate_coding_sheet.py \
  --input examples/golden/meta-analysis-minimal/input/coding-sheet.csv
```

On Windows, if `python` points to the Microsoft Store alias, use:

```powershell
py -3 .\skills\meta-analysis-forge\scripts\validate_coding_sheet.py `
  --input .\examples\golden\meta-analysis-minimal\input\coding-sheet.csv
```

The R script assumes the effects are already comparable. It does not decide that meta-analysis is appropriate.

## Effect-Size Helpers

For mechanical extraction support:

```r
source("skills/meta-analysis-forge/scripts/effect_size_helpers.R")
```

Available helpers include:

- `se_from_ci()`
- `log_ratio()`
- `log_ratio_se_from_ci()`
- `fisher_z()`
- `fisher_z_se()`
- `smd_se_approx()`
- `lnrom()`

These functions preserve transparency; they do not decide that effects are comparable.

## Future R Packages

Possible future deterministic scripts may use:

- `meta`
- `clubSandwich`
- `robumeta`
- `dmetar`
- `PRISMA2020`

These are not required for the current minimal example.
