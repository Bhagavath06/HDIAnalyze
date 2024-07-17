#' Another Print method for HDIAnalyze class
#'
#' This function prints the first 5 observations of HDIAnalyze object. Output shows the columns of dataframe and their first five values in a well defined tabular format.
#'
#' @param x A HDIAnalyze object.
#' @param ... Other arguments.
#'
#' @export
#' @examples
#' hdi_data <- read_hdi(hdro_indicators_ind.csv)
#' print2.HDIAnalyze(hdi_data)
#'
print2.HDIAnalyze <- function(x, ...) {
  cat("Human Development Indicator Data\n")
  cat("----------------------------------")
  print(knitr::kable(head(x)), row.names = FALSE)
}

