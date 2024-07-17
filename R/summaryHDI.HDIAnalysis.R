#' Summary Method for HDIAnalyze Class
#'
#' This function provides the summary statistics (mean, standard deviation, minimum and maximum value) of the HDIAnalyze object
#' sorted by the indicator_id of the object.
#'
#'
#' @param x An HDIAnalyze object.
#' @param ... Additional parameters which can be passed to summary.
#'
#' @export
#' @name summaryHDI
#' @examples
#' hdi_data <- read_hdi(hdro_indicators_ind.csv)
#' summaryHDI.HDIAnalysis(hdi_data)
#'
summaryHDI.HDIAnalyze <- function(x, ...) {

  # Load Necessary Library
  library(data.table)
  library(dplyr)

  # Check if the value column is numeric
  if (!is.data.frame(x)) {
    as.data.frame(x)
  }

  summary <- x |>
    group_by(indicator_id) |>
    summarise(
      mean = round(mean(value, na.rm = TRUE), 2),
      median = round(median(value, na.rm = TRUE), 2),
      sd = round(sd(value, na.rm = TRUE), 2),
      min = min(value, na.rm = TRUE),
      max = max(value, na.rm = TRUE),
      count = n())

  # Print the summary statistics in a table format
  cat("Summary Statistics of Human Development Indicators Sorted by Indicators\n")
  cat("-----------------------------------------------------------------------")
  print(knitr::kable(summary), row.names = FALSE)

}
