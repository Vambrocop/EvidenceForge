# Small-Wetland Methane Scaling

Use this reference for studies that estimate methane emissions from small wetlands, ponds, small water bodies, inundated patches, or other spatially fragmented ecosystems where coarse maps can omit many sources.

## Running Example

Li et al. (2026), "The underappreciated importance of small wetlands in global methane emissions," Nature Climate Change, is a useful model article for this pattern.

Accessible preview facts:

- article type: Brief Communication;
- published: 8 April 2026;
- journal: Nature Climate Change;
- DOI: https://doi.org/10.1038/s41558-026-02609-w;
- domain: global wetland methane budget;
- small-wetland size class: 0.001-1 km2;
- very-small-wetland class: <0.1 km2;
- mapping input: 30 m remote-sensing data;
- spatial domain: non-forested regions worldwide;
- identified features: 160 million small wetlands;
- headline contribution: small wetlands contribute 24% of total wetland methane emissions;
- trend window: 2003-2022;
- trend finding visible in abstract: methane emissions from small wetlands increased significantly over 2003-2022;
- dominant class: very small wetlands dominate both magnitude and growth of small-wetland emissions;
- code availability: Zenodo DOI 10.5281/zenodo.18526323;
- data links listed by Nature: GWL_FCS30 Zenodo DOI 10.5281/zenodo.10068479, HydroLAKES, SWOT-PLD, Global River Width from Landsat Zenodo DOI 10.5281/zenodo.1297434, and Global Dam Watch Database.

Source links:

- Article: https://doi.org/10.1038/s41558-026-02609-w
- Duke record: https://scholars.duke.edu/publication/1816464
- Code: https://doi.org/10.5281/zenodo.18526323
- GWL_FCS30 data: https://doi.org/10.5281/zenodo.10068479

## Why This Pattern Matters

Small wetlands can be numerous, dynamic, and hard to map. Coarse-resolution products may capture large wetland complexes but miss small, isolated, seasonal, or patchy wetlands. If these patches have high methane fluxes or strong trends, the omission can bias regional and global methane budgets.

The key evidence question is:

```text
How much does the global or regional emission estimate change when the map can detect small wetland features?
```

## Workflow

1. Define the aquatic or wetland feature class.
2. Define size bins and the minimum mapping unit.
3. Identify the spatial domain and exclusions, such as forested regions, rivers, reservoirs, lakes, or managed wetlands.
4. Compare wetland inventories or remote-sensing products by resolution and class definitions.
5. Build an area or count ledger by size class.
6. Link area or water presence to methane flux models, emission factors, or process models.
7. Estimate the contribution of each size class to total methane emissions.
8. Audit trends through time and whether changes reflect wetland dynamics, detection, climate forcing, or product artifacts.
9. Check double-counting with lakes, rivers, reservoirs, dams, and inundated vegetation.
10. Report uncertainty from mapping, classification, flux model, temporal aggregation, and extrapolation.
11. Interpret methane findings with carbon storage, biodiversity, hydrology, and ecosystem services when discussing management.

## Minimum Extraction Fields

- study_id;
- feature_class;
- size_class;
- minimum_mapping_unit;
- spatial_resolution;
- spatial_domain;
- time_window;
- wetland_inventory;
- exclusion_rule;
- feature_count;
- area_estimate;
- flux_model;
- emission_metric;
- emission_estimate;
- contribution_to_total;
- trend_estimate;
- uncertainty_source;
- double_counting_risk;
- source_anchor.

## Scale Audit Questions

- Which wetland sizes are invisible to the baseline map?
- Are very small wetlands counted as wetlands, ponds, lakes, riverine water, or excluded?
- Is the domain forested, non-forested, agricultural, boreal, tropical, or global?
- Does the flux model distinguish hydroperiod, vegetation, temperature, soil carbon, salinity, and water table?
- Does temporal change reflect real wetland expansion or map-product changes?
- Are small features spatially clustered, causing local hotspots?
- Are uncertainty intervals wider for the smallest size bins?

## Interpretation Rules

- High feature count does not imply high total area; high area does not imply high methane flux.
- A small area class can matter if flux intensity or temporal growth is high.
- Remote-sensing resolution is part of the estimand, not just a technical detail.
- Methane-budget implications should be separated from wetland-management recommendations.
- Restoration or drainage implications require carbon dioxide, nitrous oxide, biodiversity, water quality, and hydrologic-service context.

## Guardrails

- Do not generalize non-forested findings to forested wetlands without evidence.
- Do not mix lakes, wetlands, reservoirs, rivers, and ponds without explicit class rules.
- Do not ignore ephemeral or seasonal water dynamics when the study period spans multiple years.
- Do not treat code availability as data availability; both must be checked.
- Do not present methane-only accounting as full climate value of wetlands.
