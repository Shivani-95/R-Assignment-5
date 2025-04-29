# Create a ggplot plot with explicitly defined x and y axis limits.

# Load ggplot2
library(ggplot2)

# Basic scatter plot with defined axis limits
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  xlim(4, 8) +
  ylim(2, 4.5) +
  labs(title = "Scatter Plot with Fixed Axis Limits") +
  theme_minimal()
