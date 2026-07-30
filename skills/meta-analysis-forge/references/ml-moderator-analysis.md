# Interpretable Machine Learning for Moderator Analysis

Method anchors: van Lissa (2020), *Small sample meta-analyses: Exploring heterogeneity using MetaForest*; Lundberg & Lee (2017), *A Unified Approach to Interpreting Model Predictions* (SHAP); Nori et al. (2019), *InterpretML* (Explainable Boosting Machine); Hastie & Tibshirani, *Generalized Additive Models*; Wood, `mgcv`. Implementations: `metaforest`, `shap`, `interpret`, `pygam`, `mgcv`.

## What it is for

Exploring **which** study-level moderators (effect-modifiers) are associated with effect-size heterogeneity, and **how** — especially non-linear or interacting relationships a linear meta-regression would miss.

This is **exploratory / hypothesis-generating**. It complements, never replaces, pre-specified meta-regression, and it does not establish causation.

## Methods, and what each adds

- **Precision-weighted RandomForest importance (MetaForest)** — which moderators matter, robust to non-linearity and interactions. A black box.
- **SHAP** — explains the forest's per-study predictions after the fact. The standard explainer for tree models.
- **Explainable Boosting Machine (EBM)** — a glass-box additive model whose fitted shape functions *are* the explanation; no post-hoc step.
- **Penalized GAM (smooths)** — smooth partial-effect curves **with confidence bands and a per-moderator significance test** — the inference the forest and EBM do not provide.

Run more than one and compare. Agreement across a black-box importance, a glass-box shape, and a GAM smooth is far more convincing than any single method.

## Honesty guardrails — non-negotiable

- **Adequate k.** These methods overfit on a handful of studies. Enforce a minimum (e.g. k ≥ 10 complete cases) and treat small-k results as weak.
- **Out-of-fold fit.** Report a cross-validated / out-of-fold R² (or explained deviance). When it is ≤ 0, the moderators explain no more than the grand mean — the "importances" and "shapes" are noise, and must be labelled as such rather than interpreted.
- **GAM p-values are approximate** at small k, often anti-conservative. Report them as exploratory signals, not confirmatory tests.
- **Precision weighting.** Weight by inverse variance (plus tau²) so imprecise studies do not dominate the fit.
- **Complete-case transparency.** State how many studies were dropped for missing moderator data.

## Reporting minimum

- which methods, software, and random seed (results must reproduce);
- moderators entered, effect metric, weighting, k used and n dropped;
- importance ranking and/or shape functions;
- out-of-fold fit stated plainly — including when it indicates noise;
- an explicit "exploratory, complements meta-regression, not causal" caveat.
