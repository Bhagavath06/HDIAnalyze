#' Print method for HDIAnalyze class
#'
#' This function prints the first 5 observations of HDIAnalyze object. Output shows the columns of dataframe and their first five values.
#'
#' @param x A HDIAnalyze object.
#' @param ... Other arguments.
#'
#' @export
#' @examples
#' hdi_data <- read_hdi(hdro_indicators_ind.csv)
#' print1.HDIAnalyze(hdi_data)
#'
print1.HDIAnalyze <- function(x, ...) {
  cat("Human Development Indicator Data\n")
  cat("----------------------------------\n")
  print.default(head(x))
}

