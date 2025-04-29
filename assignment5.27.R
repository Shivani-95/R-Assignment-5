# Write code to plot data points with condition-based shapes
# and colors using ggplot.

# Load required libraries
library(ggplot2)
library(dplyr)

# Sample data
set.seed(42)
df <- data.frame(
  x = rnorm(100, mean = 5, sd = 1),
  y = rnorm(100, mean = 5, sd = 1)
)

# Categorize based on conditions for color and shape
df <- df %>%
  mutate(
    color_group = ifelse(x > 5, "High X", "Low X"),
    shape_group = ifelse(y > 5, "High Y", "Low Y")
  )

# Plot using condition-based color and shape
ggplot(df, aes(x = x, y = y, color = color_group, shape = shape_group)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_manual(values = c("High X" = "blue", "Low X" = "
