# ScanSci PDF Setup and Workflow

`scansci-pdf` is best treated as a literature-ingestion layer for EvidenceForge.

It is not a meta-analysis method by itself. It is the infrastructure that helps an agent:

- search papers;
- resolve DOI and citation metadata;
- download PDFs;
- import `.bib` lists;
- hand a structured paper set to screening, extraction, review, or meta-analysis workflows.

## Why It Fits EvidenceForge

EvidenceForge already covers:

- protocol design;
- search and screening logs;
- coding sheets;
- effect-size extraction;
- meta-analysis and umbrella-review logic;
- environmental and life-science review variants.

`scansci-pdf` fits before those steps. It can serve as the retrieval and PDF-collection layer for:

- systematic reviews;
- meta-analysis projects;
- umbrella reviews;
- AI-assisted screening;
- domain-specific evidence audits.

## Recommended Architecture

Use three layers:

1. Retrieval layer:
   `scansci-pdf`

2. Evidence-method layer:
   `EvidenceForge`

3. Analysis or writing layer:
   `meta-analysis-forge`, `umbrella-review-skeptic`, `environment-life-review-forge`, or downstream manuscript tools.

This keeps paper retrieval separate from methodological judgment.

## Local Installation

Install from PyPI:

```bash
py -m pip install scansci-pdf
```

Check the local environment:

```bash
scansci-pdf check
```

The project README describes the standard MCP stdio configuration as:

```json
{
  "mcpServers": {
    "scansci-pdf": {
      "command": "scansci-pdf",
      "args": ["run"]
    }
  }
}
```

For Claude Code, the command-line equivalent is:

```bash
claude mcp add scansci-pdf -- scansci-pdf run
```

Then verify:

```bash
claude mcp list
```

## Claude Code and Other Agents

If an MCP-compatible agent exposes the configured server, `scansci-pdf` can provide tools such as:

- keyword search;
- DOI or arXiv download;
- batch download;
- citation export;
- `.bib` import;
- health checks and network diagnostics.

That makes it a strong front end for AI-assisted evidence synthesis.

## How To Use It With EvidenceForge

### Example: systematic review intake

1. Search papers by keyword.
2. Export or collect DOI and citation metadata.
3. Download PDFs in batch.
4. Build a screening set.
5. Move to:
   - `evidence-synthesis-forge` for protocol and screening;
   - `meta-analysis-forge` for coding and pooling;
   - `environment-life-review-forge` for domain-specific extraction.

### Example prompt pattern

```text
Use scansci-pdf to search and download candidate papers on rice biochar and greenhouse gas emissions.
Then switch to EvidenceForge screening and extraction workflows.
Keep retrieval separate from methodological judgment.
```

## Suggested Workflow Boundaries

Use `scansci-pdf` for:

- paper search;
- PDF download;
- DOI resolution;
- citation export;
- `.bib` import;
- retrieval diagnostics.

Do not use `scansci-pdf` as a substitute for:

- study eligibility judgment;
- risk-of-bias appraisal;
- effect-size extraction quality control;
- causal interpretation;
- synthesis-model choice.

## Compliance and Risk Boundary

The project README lists multiple retrieval routes, including open-access sources, publisher links, WebVPN or CARSI access, and also routes such as Sci-Hub or LibGen.

Because of that, EvidenceForge should document a simple boundary:

- prefer open-access, publisher-authorized, institution-authorized, or otherwise legitimate access routes first;
- treat legally or institutionally sensitive routes as a user-side decision, not an automatic default;
- document the chosen retrieval strategy in the review ledger when reproducibility matters.

The project also documents a `legal_only` strategy. That is the cleanest default when a review needs a conservative retrieval policy.

## Useful Configuration Ideas

Examples from the project README:

- `download_strategy = legal_only` for conservative retrieval;
- `output_dir` to keep a dedicated paper folder per review;
- `batch_workers` for larger download jobs;
- `vpnsci_enabled` or `carsi_enabled` when institution-authorized access is available.

## What To Store In Your Own Repositories

Keep these in your GitHub repositories:

- setup instructions;
- MCP registration instructions;
- recommended retrieval policies;
- folder conventions for downloaded PDFs;
- review-ledger notes explaining whether retrieval was OA-only, institution-assisted, or mixed.

Do not vendor the whole upstream project into EvidenceForge unless you have a specific maintenance reason. A thin integration document is cleaner and easier to keep current.

## Minimal Review Ledger Add-On

When `scansci-pdf` is used in a review project, record:

- search date;
- search terms;
- download strategy;
- whether `.bib` import was used;
- output folder;
- access mode: OA-only, publisher-authorized, institution-authorized, or mixed;
- unresolved missing PDFs.

## Source

- Upstream repository: https://github.com/Rimagination/scansci-pdf
