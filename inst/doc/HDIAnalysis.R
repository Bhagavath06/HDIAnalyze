## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include=FALSE, warning=FALSE--------------------------------------
library(data.table)
library(ggplot2)
library(dplyr)
library(knitr)

## ----load_library, warning=FALSE----------------------------------------------
library(HDIAnalyze)

## ----load_print_data, warning=FALSE-------------------------------------------
# Load the data
hdi_irl <- read_hdi("hdro_indicators_irl.csv")

## -----------------------------------------------------------------------------
# Print the data (method 1)
print1.HDIAnalyze(hdi_irl)

## -----------------------------------------------------------------------------
# Print the data(method 2)
print2.HDIAnalyze(hdi_irl)

## ----summary_data-------------------------------------------------------------
summaryHDI.HDIAnalyze(hdi_irl)

## ----plot_method, fig.height=5, fig.width=7, fig.align='center'---------------
plotHDI.HDIAnalyze(hdi_irl)

## ----read_ind-----------------------------------------------------------------
hdi_ind <- read_hdi("hdro_indicators_ind.csv")

print1.HDIAnalyze(hdi_ind)

## -----------------------------------------------------------------------------
print2.HDIAnalyze(hdi_ind)

## -----------------------------------------------------------------------------
summaryHDI.HDIAnalyze(hdi_ind)

## ----fig.height=5, fig.width=7, fig.align='center'----------------------------
plotHDI.HDIAnalyze(hdi_ind)

