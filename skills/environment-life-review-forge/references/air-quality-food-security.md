# Air Quality Food Security

Use this reference when a study links air pollution controls, crop productivity, yield, solar-induced chlorophyll fluorescence (SIF), calories, or food-security outcomes.

## Running Example

Liu, Chu, Tang, and colleagues (2024) study how ozone and aerosol reductions affect China's food security.

Core design:

- Journal: *Nature Food*, volume 5, pages 158-170.
- DOI: `https://doi.org/10.1038/s43016-023-00882-y`.
- Published: 2 January 2024.
- Data: public original sources listed in the paper's supplementary materials.
- Code: `https://github.com/XiangLiu-github/China_SIF_air_pollution_Code`.
- Exposure family: ozone and aerosols, including peak-season ozone and fine particulate matter targets.
- Outcome family: crop SIF, crop yield, crop calories, and grain self-sufficiency timing.
- Crops highlighted in the abstract: maize, rice, and wheat.
- Reported policy target example: 60 micrograms per cubic meter for peak-season ozone and 35 micrograms per cubic meter for annual PM2.5.
- Reported projection example: maize, rice, and wheat yield increases of 7.84%, 4.10%, and 3.43%, with crop calories increasing by about 4.51%.

## Why This Pattern Matters

This is a co-benefit model. It connects environmental regulation to agricultural production and food security. It is useful for reviews on air pollution, crop productivity, remote sensing, food-system resilience, and policy synergies.

The audit challenge is that the chain is long:

air-quality target -> pollutant exposure -> SIF/productivity -> yield -> calories -> self-sufficiency.

Each link needs its own assumptions, validation, and uncertainty.

## Minimum Extraction Fields

- `pollutants`
- `exposure_metric`
- `crops`
- `crop_outcome`
- `remote_sensing_proxy`
- `statistical_model`
- `functional_form`
- `weather_controls`
- `spatial_controls`
- `counterfactual_target`
- `yield_change`
- `calorie_conversion`
- `food_security_endpoint`
- `uncertainty`
- `data_availability`
- `code_availability`
- `interpretation_limit`

## Audit Questions

- Are ozone and aerosol effects modeled jointly, separately, or with interactions?
- Are pollutant reductions policy targets or hypothetical counterfactuals?
- Are SIF/productivity proxies validated against crop yield?
- Are crop-specific response functions used?
- Are weather, climate, irrigation, crop area, cultivar, and management confounders handled?
- Is the translation from yield to calories explicit?
- Are import, storage, prices, and demand excluded or modeled?
- Are uncertainty intervals reported for counterfactual food-security outcomes?

## Prompt Skeleton

```text
Use environment-life-review-forge to audit this air-quality food-security study.

Pollutants:
Crops:
Outcome chain:
Spatial/temporal scope:
Model:
Counterfactual target:
Food-security endpoint:
Data/code:

Return:
1. pollutant-crop-food security evidence card;
2. model and counterfactual audit;
3. proxy-to-yield conversion risks;
4. supported policy co-benefit claims;
5. overclaiming risks and needed robustness checks.
```
