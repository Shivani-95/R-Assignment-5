# Write a code snippet using geom_segment() to
# add customized line segments to your plot.

# Load ggplot2
library(ggplot2)

# Sample data
df <- data.frame(
  x = c(1, 2, 3, 4, 5, 6),
  y = c(2, 3, 2, 5, 4, 6)
)

# Create the plot with custom line segments
ggplot(df, aes(x = x, y = y)) +
  geom_point(size = 4) +  # Add points
  geom_segment(
    aes(x = 1, y = 2, xend = 3, yend = 2.5),  # Segment from (1, 2) to (3, 2.5)
    color = "red", size = 1.2, linetype = "dashed"
  ) +
  geom_segment(
    aes(x = 4, y = 5, xend = 6, yend = 5.5),  # Segment from (4, 5) to (6, 5.5)
    color = "blue", size = 1, linetype = "solid"
  ) +
  labs(title = "Plot with Customized Line Segments") +
  theme_minimal()
