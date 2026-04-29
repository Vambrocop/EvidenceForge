# EvidenceForge effect-size helper functions.
#
# These helpers support transparent calculations during extraction. They are not
# a substitute for a full effect-size conversion workflow or domain review.

se_from_ci <- function(ci_low, ci_high, level = 0.95) {
  alpha <- 1 - level
  z <- stats::qnorm(1 - alpha / 2)
  (ci_high - ci_low) / (2 * z)
}

log_ratio <- function(ratio) {
  if (any(ratio <= 0, na.rm = TRUE)) {
    stop("Ratio estimates must be positive before log transformation.")
  }
  log(ratio)
}

log_ratio_se_from_ci <- function(ci_low, ci_high, level = 0.95) {
  se_from_ci(log_ratio(ci_low), log_ratio(ci_high), level = level)
}

fisher_z <- function(r) {
  if (any(abs(r) >= 1, na.rm = TRUE)) {
    stop("Correlations must be strictly between -1 and 1.")
  }
  atanh(r)
}

fisher_z_se <- function(n) {
  if (any(n <= 3, na.rm = TRUE)) {
    stop("Fisher z standard error requires n > 3.")
  }
  1 / sqrt(n - 3)
}

smd_se_approx <- function(d, n_treat, n_control) {
  if (any(n_treat <= 1 | n_control <= 1, na.rm = TRUE)) {
    stop("SMD standard error approximation requires group sizes > 1.")
  }
  sqrt((n_treat + n_control) / (n_treat * n_control) + (d^2 / (2 * (n_treat + n_control - 2))))
}

lnrom <- function(mean_treat, mean_control) {
  if (any(mean_treat <= 0 | mean_control <= 0, na.rm = TRUE)) {
    stop("lnROM requires positive treatment and control means.")
  }
  log(mean_treat / mean_control)
}

conversion_note <- function() {
  paste(
    "EvidenceForge helpers provide mechanical transformations only.",
    "Record the original metric, formula, assumptions, and source location.",
    "Do not combine transformed effects until conceptual comparability is checked."
  )
}
