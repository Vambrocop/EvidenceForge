# Local Meta Literature Reproducibility Inventory

Local source folder:

```text
E:\my-projects\Reference Literature\meta literature
```

This inventory records local papers and attachments that can be turned into reusable EvidenceForge paradigms. The goal is not only to summarize findings, but to identify whether each item can support a reproducible route:

```text
paper -> supplement -> data table -> code -> model object -> output -> reusable skill/template
```

## Version Implication

This folder is strong enough to move EvidenceForge beyond a simple method scaffold. It currently supports a **v0.35 / v0.4-alpha** maturity label:

- stronger than v0.3 because real high-value article templates, open data/code cases, and reproducibility audits exist;
- not yet v0.5 because the major case studies have not all been converted into fully rerunnable end-to-end examples.

## Local File Inventory

| Local item | Article type | Available local materials | Reproducibility status | Main paradigm value |
|---|---|---|---|---|
| Potassium fertilization enhances both cereal yield and soil organic carbon | Nature Communications meta-analysis | main PDF; Zenodo folder with CSV data, README workbook, R script | strongest local reproducibility candidate | dual-outcome nutrient meta-analysis; open data/code; `lnRR`; `rma.mv`; BRT |
| A meta-analysis of ant-mediated effects on soil carbon cycling and organic matter stability | Nature Communications meta-analysis | main PDF; supplementary information; reporting summary; transparent peer review; local paradigm review | workflow reusable; public Figshare code/data still needs local download/audit | stock-vs-flux ecological meta; VCV/shared controls; `rma.mv`; random forest; PLS-PM/PLS-SEM |
| Long-term agricultural diversification increases financial profitability, biodiversity, and ecosystem services | Nature Communications second-order meta-analysis | main/supplement PDFs; peer-review file; reporting summary; supplementary data spreadsheet | workflow reusable; OSF code/data audit can be deepened | second-order meta-analysis; duration meta-regression; overlap checks; review quality; trade-off model |
| An international mega-analysis of psychedelic drug effects on brain circuit function | Nature Medicine mega-analysis | main PDF | conceptually important; GitHub/supplement should be audited next | multi-site harmonized mega-analysis; Bayesian hierarchical modeling; uniform preprocessing |
| A systematic review and Bayesian meta-analysis of acute physical activity and cognition | Communications Psychology systematic review/meta-analysis | main PDF | candidate for Bayesian meta-analysis skill extension | Bayesian hierarchical meta-analysis; probabilistic evidence language; OSF/GitHub cues |
| Organic amendment effects on soil properties and crop yield in cotton field | Industrial Crops and Products meta-analysis | main PDF | useful but weaker local reproducibility until data/code are found | cotton-specific organic amendment meta; random forest driver ranking |

## Strongest Immediate Case: Potassium Fertilization NC

Local folder:

```text
E:\my-projects\Reference Literature\meta literature\Potassium fertilization enhances both cereal yield and soil organic carbon a meta-analysis\18839011
```

Files:

- `Crop yield.csv`: 897 rows, 26 columns.
- `SOC.csv`: 288 rows, 26 columns.
- `Readme.xlsx`: metadata sheet plus run instructions.
- `Potassium fertilization.R`: 795-line R script.

### Data Table Structure

Both CSVs use a treatment-control row structure.

Shared fields:

```text
Citation
Title
Lat
Lon
MAT
MAP
Clay
SOC
TN
TP
TK
AN
AP
AK
BD
pH
Duration
potassium type
potassium rate
treatment
crop
crop system
cksize
nsize
```

Outcome-specific fields:

```text
Crop yield.csv: yield_control, yield_treatment
SOC.csv: SOC_control, SOC_treatment
```

### R Workflow Structure

The script contains these reproducible layers:

| Layer | R packages / functions | Reuse value |
|---|---|---|
| Data import | `read.table` | separate outcome tables for yield and SOC |
| Effect-size construction | `log(treatment/control)` | transparent `lnRR` calculation from raw values |
| Climate gap filling | `geodata::worldclim_global`, `terra::extract` | connects coordinates to external covariates |
| Region assignment | `sf`, `rnaturalearth` | converts coordinates to regions |
| Multilevel meta-analysis | `metafor::rma.mv` | nested `Study_ID/Entry_ID` structure |
| Moderator/subgroup models | `mods = ~ factor(...) - 1` | subgroup estimates by treatment, K type, crop, time, region |
| BRT driver ranking | `gbm::gbm` | exploratory moderator importance for yield/SOC |
| Continuous moderator plots | `metafor::rma`, `predict`, `ggplot2` | manuscript-ready relationship plots |
| Output generation | `write.csv`, `ggsave` | reproducible tables and figures |

Important implementation cues:

```text
lnratio_yield = log(yield_treatment / yield_control)
lnratio_SOC   = log(SOC_treatment / SOC_control)
random        = ~ 1 | Study_ID / Entry_ID
```

The script uses a custom weight:

```text
weight = Duration^2 / (Duration + Duration) + (cksize * nsize) / (cksize + nsize)
vi = 1 / weight
```

This is useful as a workflow pattern, but should be audited carefully before reuse because it is not the standard sampling-variance formula for all response-ratio meta-analyses.

### Reusable Rule

For nutrient meta-analyses:

```text
Keep productivity and soil-carbon outcomes as separate tables, preserve treatment/control raw values, compute lnRR in code, then use multilevel models and exploratory driver ranking without treating BRT/RF importance as causal proof.
```

## Ant Soil Carbon NC: What Is Still Missing

Local materials are excellent for methods understanding:

- main paper;
- supplementary information;
- reporting summary;
- transparent peer review;
- local paradigm review.

The missing reproducibility step is the public Figshare package. The next audit should download and inspect:

- raw/processed data tables;
- effect-size calculation scripts;
- VCV construction for shared controls;
- `metafor::rma.mv` model scripts;
- `ranger` random forest scripts;
- `plspm` path-model scripts;
- README and session info.

Reusable rule:

```text
A Nature Communications meta-analysis with transparent peer review should be read as a paper plus a revision history. Reviewer comments often reveal which method choices are fragile.
```

## Agricultural Diversification NC: What Is Still Missing

Local materials include the most important Nature files:

- supplementary information;
- peer-review file;
- reporting summary;
- supplementary data listing included meta-analyses.

The existing EvidenceForge reference already records OSF dependency findings. The next step is to map the OSF script order and model objects:

- review-level effect table;
- duration coding;
- overlap handling;
- quality scorecard;
- `metafor` hierarchical models;
- `orchaRd` outputs;
- `nnet` trade-off model;
- sensitivity scripts.

Reusable rule:

```text
For second-order meta-analysis, the raw data unit is not a primary study. It is a review-level effect, and the workflow must include overlap, quality, duration, and outcome-family coding before any pooled conclusion.
```

## Mega-Analysis And Bayesian Meta Candidates

### Psychedelic Brain Circuit Mega-Analysis

Local PDF indicates:

- Nature Medicine article;
- international multi-site mega-analysis;
- harmonized resting-state fMRI preprocessing;
- Bayesian hierarchical modeling;
- GitHub supplement cue: `BOLD_psychedelics_consortium`.

This is useful for the `ipd-and-mega-analysis` branch because the unit is not a published summary effect. The workflow is closer to:

```text
site-level/raw-derived neuroimaging data -> harmonized preprocessing -> Bayesian hierarchical model -> pooled probability statements
```

### Acute Physical Activity Bayesian Meta-Analysis

Local PDF indicates:

- Communications Psychology article;
- systematic review plus Bayesian meta-analysis;
- brms/Stan/JAGS/OSF/GitHub cues in the text.

This is useful for a future Bayesian meta-analysis template:

```text
effect extraction -> Bayesian hierarchical model -> posterior probability statements -> sensitivity/priors/reporting
```

## External Landscape Check

Recent AI evidence-synthesis work confirms that end-to-end automated meta-analysis is still underdeveloped. Li, Mathrani, and Susnjak's 2025 review of automated meta-analysis reports that automation is concentrated in data processing and that advanced synthesis stages remain a gap. Zhao, Zhang, and Xu's 2026 EligMeta proposal is useful because it separates LLM reasoning from deterministic execution, which matches EvidenceForge's philosophy.

This supports the EvidenceForge direction:

```text
AI should help orchestrate extraction and auditing, while deterministic scripts handle effect-size calculation, validation, model fitting, and output generation.
```

## Priority Queue

### Priority 1: Full Local Reproduction Walkthrough

Potassium fertilization NC:

1. normalize CSV encodings;
2. reconcile script file names with local CSV file names;
3. run package dependency check;
4. execute script in a controlled output folder;
5. capture generated tables/figures;
6. turn the workflow into a reusable nutrient-meta tutorial.

### Priority 2: Download And Audit Public Code/Data

Ant soil carbon NC:

1. download Figshare package;
2. identify data schema;
3. locate `rma.mv`, VCV, `ranger`, and `plspm` scripts;
4. compare code to paper methods;
5. update the ecological meta + ML + path-model template.

Agricultural diversification NC:

1. inspect OSF scripts and data;
2. map script order;
3. document model objects;
4. convert review-level workflow into second-order reproducibility guide.

### Priority 3: Expand Method Branches

- Bayesian meta-analysis branch from the Communications Psychology paper.
- Mega-analysis branch from the Nature Medicine psychedelic paper.
- Cotton organic amendment branch if data/code can be found.

## Bottom Line

EvidenceForge should not become only a collection of prompts or paper summaries. The stronger direction is:

```text
high-value article -> analysis-form audit -> data schema -> code/model extraction -> reusable agent skill
```

That is the route by which EvidenceForge can become a paradigm library rather than a literature-note repository.
