#' Read the Human Development Indicator Data
#'
#'This function reads the Human Development Indicator (HDI) CSV file and returns a cleaned data frame.
#'
#' @param file_name The path to hdi.csv file
#'
#' @return An object of class hdi_analyze.
#' @export
#'
#' @examples
#' read_hdi(hdro_indicators_ind.csv)
read_hdi <- function(file_name) {

  # Load necessary library
  library(data.table)

  # Read the file
  data <- fread(file_name)

  # Remove unwanted rows
  data <- data[-1, ]

  # Clean column names
  # Change separated names with underscore
  # convert to lower case
  setnames(data, gsub(" ", "_", tolower(names(data))))

  # Check if data is data.table
  # If not, convert it into data.table format
  if(!is.data.table(data)) {
    # cat("Data is not in data.table format\n")
    # cat("Converting to data.table...\n")
    data <- as.data.table(data)
  }

  # Convert variables to appropriate classes using set
  cols_to_convert <- c("country_code", "country_name", "indicator_id", "indicator_name", "index_id", "index_name", "year")
  lapply(cols_to_convert, function(col) set(data, j = col, value = as.character(data[[col]])))
  set(data, j = "value", value = as.numeric(data$value))

  # Create a new class
  class(data) <- c("HDIAnalyze", class(data))

  # Check for loading data
  cat("Data Loaded Succesfully\n\n")

  return(data)

}
