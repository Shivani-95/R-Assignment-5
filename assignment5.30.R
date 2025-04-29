#  Demonstrate using ifelse() in R to create a new variable
# and plot this conditional variable using ggplot2.


# Load necessary libraries
library(ggplot2)

# Sample data
set.seed(123)
df <- data.frame(
  x = rnorm(100, mean = 5, sd = 1),
  y = rnorm(100, mean = 5, sd = 1)
)

# Create a new conditional variable using ifelse()
df$category <- ifelse(df$y > 5, "Above Avg", "Below Avg")

# Plot using ggplot2 and color by the new variable
ggplot(df, aes(x = x, y = y, color = category)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_manual(values = c("Above Avg" = "blue", "Below Avg" = "orange")) +
  labs(title = "Points Categorized by Y > 5",
       color = "Y Category",
       x = "X Value", y = "Y Value") +
  theme_minimal()
