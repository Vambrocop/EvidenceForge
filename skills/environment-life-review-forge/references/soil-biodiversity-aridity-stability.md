# Soil Biodiversity Aridity Stability

Use this reference when a study asks whether soil biodiversity, microbial diversity, soil fauna, functional diversity, or belowground community composition supports ecosystem stability under aridity, drought, warming, or land-use stress.

## Running Example

Qi, Liang, Zhang, Wang, Wei, and Jiao (2026) are shown in the user's screenshot with the article title *Intensifying Aridity Undermines the Role of Soil Biodiversity in Supporting Ecosystem Stability* in *Global Change Biology*, DOI `https://doi.org/10.1111/gcb.70903`.

Only screenshot-level metadata were available during this extraction. Full-text details should be verified before using this as a case-study source.

## Why This Pattern Matters

Biodiversity-stability claims are central to ecology, but climate stress can change the relationship. A useful audit separates:

1. biodiversity measurement;
2. ecosystem stability metric;
3. stress gradient;
4. interaction/moderation model;
5. mechanism and causal strength.

The key question is not only "does biodiversity support stability?" It is also "under which aridity or climate-stress conditions does that support weaken, disappear, or reverse?"

## Minimum Extraction Fields

- `biodiversity_dimension`
- `measurement_platform`
- `ecosystem_stability_metric`
- `climate_stress_gradient`
- `spatial_domain`
- `ecosystem_type`
- `sampling_design`
- `temporal_depth`
- `moderation_model`
- `controls`
- `mechanism_evidence`
- `threshold_or_nonlinearity`
- `uncertainty`
- `causal_strength`
- `interpretation_limit`

## Audit Questions

- What kind of biodiversity is measured: richness, Shannon diversity, functional diversity, microbial taxa, soil fauna, or community composition?
- What stability metric is used: temporal stability, resistance, resilience, productivity variability, multifunctionality, or service stability?
- Is aridity measured as an index, precipitation deficit, drought event, long-term climate gradient, or experimental treatment?
- Are biodiversity and stability measured at compatible spatial and temporal scales?
- Are productivity and environmental heterogeneity controlled?
- Is the aridity interaction pre-specified or exploratory?
- Are spatial autocorrelation and site clustering handled?
- Is the mechanism supported by soil nutrients, plant traits, microbial functions, or only correlations?
- Is the claim causal, experimental, observational, or descriptive?

## Prompt Skeleton

```text
Use environment-life-review-forge to audit this soil biodiversity and ecosystem stability paper.

Biodiversity measure:
Stability metric:
Aridity/stress gradient:
Spatial and temporal design:
Model:
Mechanism evidence:
Claim:

Return:
1. biodiversity-stability evidence card;
2. aridity moderation audit;
3. scale and confounding risks;
4. supported conclusions;
5. claims that need experimental or temporal evidence.
```
