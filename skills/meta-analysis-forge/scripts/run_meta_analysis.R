#!/usr/bin/env Rscript

args <- commandArgs(trailingOnly = TRUE)

usage <- function() {
  cat(
    "Usage:\n",
    "  Rscript run_meta_analysis.R --input coding-sheet.csv --outdir output [--metric SMD]\n\n",
    "Required input columns:\n",
    "  study_id, effect_id, effect_metric, estimate, se\n\n",
    "Outputs:\n",
    "  meta-summary.txt, model-results.csv, forest-plot.pdf, funnel-plot.pdf\n",
    sep = ""
  )
}

get_arg <- function(flag, default = NULL) {
  idx <- match(flag, args)
  if (is.na(idx) || idx == length(args)) {
    return(default)
  }
  args[[idx + 1]]
}

input_path <- get_arg("--input")
out_dir <- get_arg("--outdir", "meta_output")
metric_filter <- get_arg("--metric")

if (is.null(input_path)) {
  usage()
  stop("Missing --input.", call. = FALSE)
}

if (!requireNamespace("metafor", quietly = TRUE)) {
  stop("Package 'metafor' is required. Install it with install.packages('metafor').", call. = FALSE)
}

if (!file.exists(input_path)) {
  stop(paste("Input file not found:", input_path), call. = FALSE)
}

dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)

dat <- read.csv(input_path, stringsAsFactors = FALSE, na.strings = c("", "NA", "N/A"))
required <- c("study_id", "effect_id", "effect_metric", "estimate", "se")
missing <- setdiff(required, names(dat))

if (length(missing) > 0) {
  stop(paste("Missing required columns:", paste(missing, collapse = ", ")), call. = FALSE)
}

if (!is.null(metric_filter)) {
  dat <- dat[dat$effect_metric == metric_filter, , drop = FALSE]
}

dat$estimate <- suppressWarnings(as.numeric(dat$estimate))
dat$se <- suppressWarnings(as.numeric(dat$se))
dat <- dat[is.finite(dat$estimate) & is.finite(dat$se) & dat$se > 0, , drop = FALSE]

if (nrow(dat) < 2) {
  stop("At least two valid effects with positive standard errors are required.", call. = FALSE)
}

metric_values <- unique(dat$effect_metric)
if (length(metric_values) > 1) {
  stop(
    paste(
      "Multiple effect metrics found:",
      paste(metric_values, collapse = ", "),
      "- filter with --metric or harmonize before pooling."
    ),
    call. = FALSE
  )
}

dat$vi <- dat$se^2
model <- metafor::rma.uni(yi = estimate, vi = vi, data = dat, method = "REML")

summary_path <- file.path(out_dir, "meta-summary.txt")
sink(summary_path)
cat("EvidenceForge minimal meta-analysis run\n")
cat("=======================================\n\n")
cat("Input:", normalizePath(input_path, winslash = "/", mustWork = FALSE), "\n")
cat("Effects included:", nrow(dat), "\n")
cat("Studies represented:", length(unique(dat$study_id)), "\n")
cat("Effect metric:", metric_values[[1]], "\n\n")
print(summary(model))
cat("\nQuality notes:\n")
cat("- This script assumes the input effects are already comparable.\n")
cat("- It does not solve within-study dependence; inspect dependency_group before relying on pooled results.\n")
cat("- Risk of bias and certainty judgments remain human review tasks.\n")
sink()

results <- data.frame(
  effect_metric = metric_values[[1]],
  k = model$k,
  estimate = as.numeric(model$b[1]),
  se = model$se,
  ci_low = model$ci.lb,
  ci_high = model$ci.ub,
  tau2 = model$tau2,
  I2 = model$I2,
  H2 = model$H2,
  p_value = model$pval,
  stringsAsFactors = FALSE
)

write.csv(results, file.path(out_dir, "model-results.csv"), row.names = FALSE)

pdf(file.path(out_dir, "forest-plot.pdf"), width = 8, height = 6)
metafor::forest(model, slab = paste(dat$study_id, dat$effect_id, sep = ":"))
dev.off()

pdf(file.path(out_dir, "funnel-plot.pdf"), width = 7, height = 6)
metafor::funnel(model)
dev.off()

cat("Wrote outputs to:", normalizePath(out_dir, winslash = "/", mustWork = FALSE), "\n")
