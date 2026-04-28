# EvidenceForge｜证据熔炉

**From scattered studies to auditable evidence workflows.**  
**Agent skills for systematic review, meta-analysis, umbrella review, and AI-assisted evidence synthesis.**  
**面向系统综述、Meta 分析、二阶 Meta、伞状综述与 AI 辅助证据综合的 Agent Skills。**

EvidenceForge turns scattered studies, review protocols, search records, effect sizes, risk-of-bias judgments, and synthesis decisions into reusable, auditable AI agent workflows.

EvidenceForge 不是一个泛泛的“文献总结 prompt 集”。它的目标是把系统综述、Meta 分析、二阶 Meta、机器学习辅助筛选、环境与生命科学证据综合，锻造成可安装、可复用、可审计的 `SKILL.md` 工作流。

## What Does "Evidence" Mean?

Here, **evidence** means the body of research that supports or challenges a claim. It includes:

- individual studies;
- systematic reviews;
- effect sizes and uncertainty;
- methods and samples;
- risk-of-bias judgments;
- study quality;
- consistency across results;
- heterogeneity;
- publication bias;
- strength of conclusions.

In plain language: EvidenceForge helps turn many scattered papers into a transparent answer to a research question. Sometimes that answer is a meta-analysis. Sometimes it is an evidence map, a systematic review, an umbrella review, or a careful explanation of why the evidence cannot be pooled.

中文理解：这里的 evidence 不是“证据截图”，而是“研究证据体系”。它包括很多论文、效应量、样本、方法、偏倚风险、研究质量和结论一致性。EvidenceForge 的意思是：把分散研究锻造成可审计、可复现、可更新的证据工作流。

## Why EvidenceForge

Evidence synthesis is bigger than meta-analysis. A review may require:

- a transparent protocol before any conclusion is written;
- reproducible search and screening logs;
- defensible eligibility criteria;
- effect-size extraction and harmonization;
- random-effects, multilevel, or robust-variance synthesis;
- publication-bias and small-study-effect diagnostics;
- umbrella review or second-order meta-analysis;
- machine-learning assistance without hiding human judgment.

EvidenceForge keeps these tasks separate so that agents can assist without pretending to replace domain expertise.

## Method Sources

EvidenceForge is grounded in established evidence-synthesis guidance rather than ad hoc prompt patterns. The first version is aligned with:

- PRISMA 2020 reporting guidance;
- Cochrane Handbook methods for reviews and meta-analysis;
- JBI Manual methods for systematic, scoping, mixed-methods, and umbrella reviews;
- Collaboration for Environmental Evidence standards for environmental systematic reviews and maps;
- AMSTAR 2 and ROBIS for review appraisal;
- ASReview-style human-in-the-loop machine-learning screening;
- standard meta-analysis texts and R workflows.

See:

- [`docs/method-sources.md`](docs/method-sources.md)
- [`docs/source-crosswalk.md`](docs/source-crosswalk.md)
- [`docs/reading-list.md`](docs/reading-list.md)

## Inspired By

This project is inspired by the workflow logic in *Scaling Reproducibility: An AI-Assisted Workflow for Large-Scale Replication and Reanalysis* by Yiqing Xu and Leo Yang Yang.

The key idea we borrow is not any single statistic. It is the architecture:

- use agent skills as task contracts;
- keep knowledge in concise `SKILL.md` files and focused references;
- separate AI orchestration from deterministic analysis;
- keep human judgment visible;
- make logs, templates, and outputs auditable.

EvidenceForge applies that idea to evidence synthesis instead of paper replication.

Related companion project: [EmpiriForge](https://github.com/Vambrocop/EmpiriForge), which focuses on primary empirical research, economics writing, causal inference, and reproducibility packages.

## Quick Demo

```text
Input:
  I want to review whether green finance policies improve firm environmental performance.
  I may need systematic review, meta-analysis, umbrella review, and ML-assisted screening.

Skills:
  evidence-synthesis-forge
  meta-analysis-forge
  umbrella-review-skeptic
  meta-ml-screener

Output:
  Protocol draft
  Search strategy
  Screening workflow
  Effect-size coding sheet
  Meta-analysis plan
  Second-order evidence audit
  ML-assistance guardrails
```

Example prompt:

```text
Use evidence-synthesis-forge to design a systematic review and meta-analysis protocol.
Include a second-order meta-analysis option and a machine-learning assisted screening plan.
```

## Skills

```text
skills/
├── evidence-synthesis-forge/
│   ├── SKILL.md
│   ├── references/
│   │   └── review-types.md
│   └── templates/
│       └── evidence-protocol.md
├── meta-analysis-forge/
│   ├── SKILL.md
│   ├── references/
│   │   ├── effect-sizes.md
│   │   └── synthesis-models.md
│   └── templates/
│       └── coding-sheet.md
├── umbrella-review-skeptic/
│   ├── SKILL.md
│   ├── references/
│   │   └── overlap-and-quality.md
│   └── templates/
│       └── overlap-matrix.md
├── meta-ml-screener/
│   ├── SKILL.md
│   ├── references/
│   │   └── ml-assisted-review.md
│   └── templates/
│       └── screening-log.md
└── environment-life-review-forge/
    ├── SKILL.md
    ├── references/
    │   └── environmental-life-science.md
    └── templates/
        └── peco-framework.md
```

## Skill Map

- `evidence-synthesis-forge`: the general orchestrator for systematic reviews, scoping reviews, rapid reviews, evidence maps, and synthesis reports.
- `meta-analysis-forge`: first-order meta-analysis, effect-size extraction, random/multilevel models, heterogeneity, publication bias, and sensitivity checks.
- `umbrella-review-skeptic`: umbrella review and second-order meta-analysis, focusing on overlap, duplicate evidence, review quality, and whether statistical pooling is defensible.
- `meta-ml-screener`: machine-learning assisted search, screening, extraction, classification, and moderator exploration with transparent human verification.
- `environment-life-review-forge`: PECO/PICO-oriented workflows for environmental, ecological, biomedical, and life-science evidence synthesis.

## Install Locally

For Codex:

```powershell
Copy-Item -Recurse ".\skills\evidence-synthesis-forge" "$env:USERPROFILE\.codex\skills\evidence-synthesis-forge"
Copy-Item -Recurse ".\skills\meta-analysis-forge" "$env:USERPROFILE\.codex\skills\meta-analysis-forge"
Copy-Item -Recurse ".\skills\umbrella-review-skeptic" "$env:USERPROFILE\.codex\skills\umbrella-review-skeptic"
Copy-Item -Recurse ".\skills\meta-ml-screener" "$env:USERPROFILE\.codex\skills\meta-ml-screener"
Copy-Item -Recurse ".\skills\environment-life-review-forge" "$env:USERPROFILE\.codex\skills\environment-life-review-forge"
```

For Claude Code:

```bash
cp -r skills/evidence-synthesis-forge ~/.claude/skills/evidence-synthesis-forge
cp -r skills/meta-analysis-forge ~/.claude/skills/meta-analysis-forge
cp -r skills/umbrella-review-skeptic ~/.claude/skills/umbrella-review-skeptic
cp -r skills/meta-ml-screener ~/.claude/skills/meta-ml-screener
cp -r skills/environment-life-review-forge ~/.claude/skills/environment-life-review-forge
```

## Boundary

EvidenceForge can help design and audit workflows. It does not invent studies, effect sizes, eligibility decisions, or risk-of-bias judgments. Statistical synthesis should be run with transparent code and reproducible data.

## Relationship to EmpiriForge

- **EmpiriForge**: primary empirical research, causal inference, and reproducible paper workflows.
- **EvidenceForge**: secondary evidence synthesis, systematic review, meta-analysis, umbrella review, and AI-assisted literature workflows.

They are companion projects: one helps produce empirical research, the other helps synthesize bodies of research.

## Status

Initial scaffold. The first version focuses on skills, references, templates, and demos. Deterministic scripts for `metafor`, PRISMA diagrams, screening logs, or extraction validation can be added later.
