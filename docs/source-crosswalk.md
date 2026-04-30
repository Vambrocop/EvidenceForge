# Source Crosswalk

This file maps EvidenceForge skills to the methods sources they should draw from.

| Skill | Main job | Primary sources | Key guardrail |
|---|---|---|---|
| `evidence-synthesis-forge` | Orchestrate review design from question to protocol/report | PRISMA 2020, Cochrane Handbook, JBI Manual | Do not jump to meta-analysis before defining question, eligibility, search, screening, extraction, appraisal, and traceable PRISMA counts |
| `meta-analysis-forge` | First-order statistical synthesis, IPD meta-analysis planning, and mega-analysis audit | Cochrane Handbook, Borenstein et al., Hedges & Olkin, Harrer et al.; Bayesian/IPD synthesis traditions | Use validators and machine-readable coding sheets before running scripts; do not pool incompatible outcomes/effect metrics, ignore dependence, or call a project mega-analysis without harmonized data reprocessing/remodeling |
| `umbrella-review-skeptic` | Review of reviews, umbrella review, second-order meta-analysis | JBI umbrella review methods, Cochrane overviews, AMSTAR 2, ROBIS | Do not double-count primary studies or treat overlapping reviews as independent |
| `meta-ml-screener` | ML-assisted screening/extraction/classification | ASReview, Rayyan, AI-assisted review literature | Keep human-in-the-loop decisions and export machine-readable audit logs |
| `environment-life-review-forge` | Environmental/ecological/life-science adaptation, including food-system nexus reviews, agroecosystem nutrient meta-analysis, scenario-model evidence synthesis, and land-use optimization trade-offs | CEE standards, JBI, ecology/evolution meta-analysis handbook, food-system nexus, environmental nutrient-meta, scenario-model, and Pareto-frontier examples | Do not pool across incompatible species, exposures, endpoints, geography, measurement platforms, soil-depth conventions, durations, or policy scenarios; separate footprint, feedback, predictive-model, optimization-frontier, and policy-feasibility claims |

## Development Rule

When adding a new skill, include:

- trigger conditions;
- sources it aligns with;
- workflow stages;
- output artifacts;
- guardrails;
- at least one template or structured output.

## EvidenceForge vs EmpiriForge

EmpiriForge uses the reproducibility paper to design skills for primary empirical research. EvidenceForge uses the same architecture for secondary research and evidence synthesis.
