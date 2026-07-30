# Network Meta-Analysis (NMA)

Method anchors: Rücker (2012), *Network meta-analysis, electrical networks and graph theory* (Research Synthesis Methods); Rücker & Schwarzer (2015), *Ranking treatments in frequentist network meta-analysis works without resampling methods* (P-scores); Dias et al. (2010), *Checking consistency in mixed treatment comparison meta-analysis* (node-splitting); R package `netmeta`.

## When NMA is appropriate

- Three or more treatments compared across a body of studies, where you want a coherent ranking and estimates for comparisons no single study made.
- The network is **connected** — every treatment links to the reference through some path of direct comparisons. Indirect contrasts across separate components are not identifiable; do not run NMA on a disconnected network.
- The **transitivity** assumption is defensible: studies on different comparisons are similar enough in effect-modifiers that indirect evidence is exchangeable with direct evidence.

## Frequentist model

- A graph-theoretical / weighted-least-squares consistency model pools the whole network at once, borrowing indirect evidence.
- Report both the common-effect and random-effects results; the random model uses a single network heterogeneity variance (generalized DerSimonian-Laird).
- Multi-arm studies contribute several **correlated** contrasts. Handle their within-study covariance — do not treat the contrasts as independent.

## Ranking

- P-scores are the frequentist analogue of SUCRA and need no resampling.
- State the direction explicitly: is a smaller or a larger outcome "better"?
- A ranking is only as trustworthy as the network beneath it — never present it before checking inconsistency.

## Inconsistency — the honesty core

- **Node-splitting** (SIDE / back-calculation): for each comparison with both direct and indirect evidence, estimate each separately and test their difference. A significant difference signals inconsistency.
- **"No inconsistency detected" is not positive proof of consistency.** Node-splitting has limited power in the small, sparse networks typical of ecology and agronomy. Say "detected", not "proven".
- If any comparison is significantly inconsistent — or the network is a spanning tree with no closed loops to check transitivity at all — do **not** present the ranking as reliable. Show the effects, and say why the ranking is not trustworthy.

## Heterogeneity vs inconsistency

Distinct concepts. Heterogeneity = effects vary within a comparison; inconsistency = direct and indirect evidence disagree. A network can be consistent yet heterogeneous. Report both, and do not let a high I² alone condemn a ranking.

## Validation discipline

Frequentist NMA is deterministic. Validate any implementation against an external authority (e.g. R `netmeta`) to machine precision before trusting it — contrasts, standard errors, tau², and node-split statistics.

## Reporting minimum

- network diagram + number of studies and treatments;
- common and random contrasts vs a stated reference, with confidence intervals;
- tau² and network I²;
- P-scores with the stated "better" direction;
- a node-split inconsistency table **and** an explicit statement of whether the ranking is trustworthy, with the reason;
- transitivity discussion and limitations.
