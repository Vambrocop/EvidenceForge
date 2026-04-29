#!/usr/bin/env Rscript

packages <- c("metafor")
repos <- getOption("repos")
if (is.null(repos) || identical(repos[["CRAN"]], "@CRAN@")) {
  repos <- c(CRAN = "https://cloud.r-project.org")
}

missing <- packages[!vapply(packages, requireNamespace, logical(1), quietly = TRUE)]

if (length(missing) == 0) {
  message("All EvidenceForge R packages are already installed.")
} else {
  message("Installing: ", paste(missing, collapse = ", "))
  install.packages(missing, repos = repos)
}
