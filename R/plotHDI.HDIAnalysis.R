#' Plot Method for HDIAnalyze Class
#'
#' This function plots the indicators of HDIAnalyze object with values less than 100 (for better visualization).
#'
#' @param x An HDIAnalyze object.
#' @param ... Additional arguments passed to plot.
#
#' @export
#' @name plot.HDI
#' @examples
#' hdi_data <- read_hdi(hdro_indicators_irl.csv)
#' plotHDI.HDIAnalyze(hdi_data)
#'
plotHDI.HDIAnalyze <- function(x, ...) {

  # Import library for plotting
  library(ggplot2)
  library(data.table)

  # Filter indicator values < 100 for better visualization
  x <- x[x$value < 100, ]

  # Create a plot showing the summary statistics
  ggplot(x, aes(x = indicator_id, y = value, fill = indicator_id)) +
    geom_boxplot() +
    theme_gray() +
    labs(title = "Boxplot of HDI Values Sorted by Indicators with Value < 100",
         x = "Indicator",
         y = "Value") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1), legend.position = "none")
}
