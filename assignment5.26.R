# Create a complex ggplot visualization that 
# includes multiple geoms and a theme customization.

# Load necessary libraries
library(ggplot2)
library(dplyr)

# Sample dataset
set.seed(123)
df <- data.frame(
  x = rnorm(100, mean = 5, sd = 1),
  y = rnorm(100, mean = 5, sd = 1)
)

# Create categories based on two numeric conditions
df <- df %>%
  mutate(
    group = case_when(
      x > 5 & y > 5 ~ "Top Right",
      x <= 5 & y > 5 ~ "Top Left",
      x <= 5 & y <= 5 ~ "Bottom Left",
      x > 5 & y <= 5 ~ "Bottom Right"
    )
  )

# Plot the categorized points
ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_manual(values = c(
    "Top Right" = "blue",
    "Top Left" = "green",
    "Bottom Left" = "red",
    "Bottom Right" = "purple"
  )) +
  labs(title = "Categorized Points Based on Two Numeric Conditions",
       color = "Quadrant Group") +
  theme_minimal()
