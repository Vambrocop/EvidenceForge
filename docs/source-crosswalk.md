# Source Crosswalk

This file maps EvidenceForge skills to the methods sources they should draw from.

| Skill | Main job | Primary sources | Key guardrail |
|---|---|---|---|
| `evidence-synthesis-forge` | Orchestrate review design from question to protocol/report | PRISMA 2020, Cochrane Handbook, JBI Manual | Do not jump to meta-analysis before defining question, eligibility, search, screening, extraction, appraisal, and traceable PRISMA counts |
| `meta-analysis-forge` | First-order statistical synthesis of primary studies | Cochrane Handbook, Borenstein et al., Hedges & Olkin, Harrer et al. | Use validators and machine-readable coding sheets before running the minimal R script; do not pool incompatible outcomes/effect metrics or ignore dependent effects |
| `umbrella-review-skeptic` | Review of reviews, umbrella review, second-order meta-analysis | JBI umbrella review methods, Cochrane overviews, AMSTAR 2, ROBIS | Do not double-count primary studies or treat overlapping reviews as independent |
| `meta-ml-screener` | ML-assisted screening/extraction/classification | ASReview, Rayyan, AI-assisted review literature | Keep human-in-the-loop decisions and export machine-readable audit logs |
| `environment-life-review-forge` | Environmental/ecological/life-science adaptation | CEE standards, JBI, ecology/evolution meta-analysis handbook | Do not pool across incompatible species, exposures, endpoints, geography, or measurement platforms |

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
