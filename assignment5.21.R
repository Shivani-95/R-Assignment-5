# Write a function to dynamically read 
# and plot data from a user-selected file.

# Load necessary libraries
library(ggplot2)

# Define the function
read_and_plot_csv <- function(x_col = 1, y_col = 2) {
  # Let user choose the file
  file_path <- file.choose()
  
  # Read the CSV file
  data <- read.csv(file_path)
  
  # Check if specified columns exist
  if (x_col > ncol(data) || y_col > ncol(data)) {
    stop("Column index out of range.")
  }
  
  # Extract column names for aesthetics
  x_name <- names(data)[x_col]
  y_name <- names(data)[y_col]
  
  # Create dynamic scatter plot
  ggplot(data, aes_string(x = x_name, y = y_name)) +
    geom_point(color = "steelblue", size = 3) +
    labs(title = paste("Scatter Plot of", y_name, "vs", x_name),
         x = x_name, y = y_name) +
    theme_minimal()
}

# Example usage:
# read_and_plot_csv(1, 2)
