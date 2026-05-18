# High-Value Meta-Analysis Paper Reproducibility Audit

Use this reference when a published meta-analysis is valuable enough to become a reusable method template, especially papers from journals such as *Nature Communications*, *Nature Sustainability*, *Nature Food*, *PNAS*, *Science Advances*, or major field journals with public code/data.

The goal is not only to read the paper. The goal is to understand **how the paper was made** and whether its workflow can be reused by the user or other researchers.

## When To Trigger

Trigger this audit when the user says a paper is:

- "good", "worth learning", "can be put into the skills", or "can be reused";
- from a high-impact journal and methodologically rich;
- a meta-analysis with supplementary data, code, or peer-review files;
- a paper combining meta-analysis with `rma.mv`, random forest, PLS-PM/SEM, machine learning, spatial data, or external covariates;
- a paper whose data table format or R code may become a template.

## Core Principle

Do not stop at the abstract, conclusions, or pooled effect.

For a reusable article, extract six layers:

1. **Analysis-form logic**: what analyses were actually done, and whether each analysis form matches the research question and data structure.
2. **Data logic**: search, screening, coding sheet, raw data table, derived data table, external covariates.
3. **Effect-size logic**: formulas, variable scale, uncertainty, shared controls, dependence structure.
4. **Code logic**: R/Python scripts, package versions, function calls, model objects, output files.
5. **Reproducibility logic**: README quality, session info, data/code repository, file paths, missing pieces, reviewer comments.
6. **Reuse logic**: which raw fields, scripts, model forms, tables, and prompts can be reused by the user or by another AI agent.

In this skill, "article logic" does **not** mean a loose narrative summary. It means:

```text
Research question -> data unit -> outcome family -> analysis form -> model object -> output table/figure -> reusable rule
```

The most important question is:

```text
Did the authors use the right analysis form for the type of evidence they had?
```

Examples:

- treatment-control primary studies -> effect sizes + random/multilevel meta-analysis;
- many effects from the same paper -> multilevel model, VCV, or robust variance plan;
- existing meta-analyses as units -> second-order meta-analysis, overlap checks, review quality scoring;
- many predictors and possible moderators -> meta-regression plus exploratory machine-learning ranking;
- hypothesized indirect pathways -> PLS-PM/SEM-family path model, with causal-language guardrails;
- trade-offs among multiple outcomes -> paired outcome table, win/loss categories, multinomial or multicriteria model;
- spatial/environmental context -> coordinate-linked external covariates and maps.

If the analysis form does not match the data unit, flag it before extracting conclusions.

## Required Extraction Checklist

### 0. Analysis-Form Fit

Before extracting detailed results, identify the analysis forms and judge whether they fit the evidence structure.

Record:

- primary data unit: primary study, effect size, review-level estimate, site, grid cell, time series, sample, or scenario;
- outcome families: stock, flux, process, trait, service, economic, risk, stability, or prediction target;
- analysis forms used: meta-analysis, second-order meta-analysis, meta-regression, multilevel model, VCV, random forest, BRT, PLS-PM/SEM, spatial model, scenario model, optimization, ML prediction, causal ML;
- whether each analysis form is necessary, optional, or mismatched;
- what each form contributes: estimation, uncertainty, heterogeneity, driver ranking, mechanism structure, prediction, scenario comparison, or policy trade-off;
- what each form cannot prove.

Use this compact map:

```text
Analysis content:
Data unit:
Outcome family:
Statistical form:
Why this form is appropriate:
Main output:
Reuse value:
Overclaim risk:
```

### 1. Data And Repository Inventory

Record:

- DOI / article URL;
- supplementary files;
- peer-review files, if available;
- code/data repository URL and DOI;
- repository platform: Figshare, Zenodo, OSF, GitHub, Dryad, institutional archive;
- whether the repository has raw data, processed data, code, README, session info, and generated outputs;
- whether files are versioned and whether the paper references the final version.

If code/data are not in the local folder, state that explicitly and provide the repository link for the next step.

### 2. Data Table Structure

Extract the data table schema whenever possible.

Minimum fields to look for:

```text
study_id
effect_id
reference
year
country
latitude
longitude
outcome_family
outcome_variable
treatment_definition
control_definition
treatment_mean
control_mean
treatment_sd
control_sd
treatment_n
control_n
effect_size
sampling_variance_or_se
effect_size_type
shared_control_id
moderators
external_covariates
quality_or_sensitivity_flags
```

For ecological meta-analyses, also check:

```text
ecosystem
soil_depth
duration
climate_variables
soil_background
species_or_taxon
functional_traits
management_variables
spatial_scale
```

### 3. Effect-Size Implementation

Do not only report the effect-size name. Extract how it was computed.

Check:

- `lnRR`, `lnROM`, Hedges' `d`, mean difference, Fisher's `z`, odds ratio, risk ratio, or other metric;
- whether each metric matches the measurement scale;
- whether the original means, SDs, and sample sizes are preserved;
- how CI/SE/p-values were converted;
- how missing SDs or sample sizes were handled;
- whether stock, flux, stability, and process outcomes were separated.

Reusable rule:

```text
The effect-size metric should be chosen by outcome scale, not by convenience.
```

### 4. Dependence And `rma.mv`

For `metafor::rma.mv()` papers, extract:

- model formula;
- effect-size column;
- variance or VCV object;
- random-effects structure;
- moderator formula;
- method argument, such as REML;
- tests and confidence intervals;
- model comparison criteria such as AIC, AICc, BIC;
- sensitivity analyses.

Look specifically for:

```r
rma.mv(yi, V, mods = ..., random = ..., data = ..., method = "REML")
```

For shared-control or repeated-use designs, check whether a variance-covariance matrix is constructed.

Record whether the analysis handles:

- multiple outcomes per study;
- multiple time points;
- multiple treatments sharing one control;
- nested sites or experiments;
- repeated measures;
- phylogenetic, spatial, or taxonomic dependence if relevant.

### 5. Random Forest / Machine-Learning Layer

If a paper uses random forest, extract:

- package name and version, such as `ranger`;
- response variable;
- predictors;
- tuning parameters;
- number of trees;
- split rule or importance method;
- validation strategy;
- variable-importance output;
- whether importance is interpreted as prediction, screening, or causal mechanism.

Typical R pattern:

```r
ranger(response ~ predictors, data = ..., importance = ...)
```

Guardrail:

```text
Random-forest importance is driver ranking or predictive screening, not causal proof.
```

### 6. PLS-PM / PLS-SEM / Path-Model Layer

If a paper uses `plspm`, SEM, or a path model, extract:

- package name and version;
- blocks or latent constructs;
- manifest variables;
- inner model/path matrix;
- outer model/modes;
- path coefficients;
- direct and indirect effects;
- model quality metrics;
- whether the path logic was theory-driven or data-driven.

Typical R pattern:

```r
plspm(data, inner_model, outer_model, modes = ...)
```

Guardrail:

```text
PLS-PM or PLS-SEM organizes mechanism hypotheses. It does not by itself prove causality.
```

### 7. Peer-Review Learning

For papers with transparent review files, extract reviewer-driven upgrades:

- effect-size corrections;
- dependence/VCV corrections;
- geographic or sample-bias limitations;
- code/README/session-info requests;
- model interpretation changes;
- wording changes around causality;
- additional sensitivity checks.

These are often the most useful lessons for writing a reviewer-proof meta-analysis.

## Output Standard

For a high-value paper, produce an audit report with:

```text
1. Analysis-form fit map
2. File/repository inventory
3. How the paper was made
4. Data table structure
5. Effect-size and uncertainty logic
6. rma.mv / model implementation
7. Random forest implementation
8. PLS-PM or path-model implementation
9. Reproducibility gaps
10. What can be reused as a skill
11. Prompts/templates for future use
```

## Minimum Verdict Categories

Use these labels:

- **Readable only**: article is useful conceptually, but code/data are absent.
- **Partially reproducible**: data or code are available, but missing README/session info or some scripts.
- **Workflow reusable**: article has enough data structure and code logic to become a reusable template.
- **Full reproduction candidate**: code, data, package versions, and outputs are sufficient for rerun and verification.

## Do Not

- Do not claim the paper is reproducible until code and data have been inspected.
- Do not infer R code from methods when public code is available but not yet checked.
- Do not merge article reading with code reproduction; record what came from the paper and what came from code.
- Do not call random forest, SHAP, or PLS-PM causal without design justification.
- Do not hide missing files. Missing code/data is a finding, not a failure.
- Do not call a paper a reusable paradigm until the analysis form has been checked against the data unit and outcome family.
