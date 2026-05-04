# Knowledge Graph Navigation With Graphify

Graphify is an optional external navigator for large research folders. It can turn a repository or literature folder into a graph report and queryable graph, which helps an agent decide what to read first.

Use it for:

- mapping how skills, references, templates, scripts, papers, supplements, and data files connect;
- orienting an agent before it reads raw PDFs, R scripts, CSV files, or long Markdown notes;
- finding cross-links between environmental evidence products, meta-analysis templates, and reproducibility ledgers;
- reducing blind keyword search when a folder has many methods, datasets, and supplementary files.

Do not use it for:

- deciding whether evidence is valid;
- judging risk of bias;
- replacing full-text screening;
- replacing effect-size extraction;
- claiming causality from graph edges.

## Install And Run

Graphify's official repository is `safishamsi/graphify`; the Python package is `graphifyy`, while the command remains `graphify`.

Typical setup:

```bash
uv tool install graphifyy && graphify install
```

For Codex, the Graphify README also documents a Codex-specific install path and then uses:

```text
$graphify .
```

Common navigation commands:

```text
$graphify .
$graphify ./papers
$graphify ./papers --update
graphify query "what connects PRISMA to meta-analysis coding sheets?" --graph graphify-out/graph.json
```

## EvidenceForge Pattern

When using Graphify with EvidenceForge:

1. Run it at the repository root or on a literature folder.
2. Start with `graphify-out/GRAPH_REPORT.md`, not the full `graph.json`.
3. Use `graphify query` for a focused subgraph.
4. Ask the agent to cite source files or papers from the graph output.
5. Route any methodological judgment back to the relevant skill, such as `meta-analysis-forge`, `umbrella-review-skeptic`, or `environment-life-review-forge`.

Suggested prompt:

```text
Read graphify-out/GRAPH_REPORT.md first.
Use graph queries only to locate relevant files.
Then apply EvidenceForge guardrails to judge the methods.
Do not treat graph edges as evidence quality or causal evidence.
```

## Privacy And Hygiene

Graphify can process code, Markdown, PDFs, images, audio, and video. That is powerful, but it means private research files need boundaries.

Create `.graphifyignore` before scanning sensitive folders:

```gitignore
.env
.venv/
raw-data/
restricted-data/
private-pdfs/
reviewer-comments-private/
graphify-out/cache/
graphify-out/manifest.json
graphify-out/cost.json
```

Treat `graphify-out/GRAPH_REPORT.md` and focused query outputs as shareable only after checking that they do not reveal restricted data, author-identifying review notes, or unpublished study details.
