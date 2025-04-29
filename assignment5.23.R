 #Create a customized legend using manual scales and guides in ggplot2.

# Load ggplot2
library(ggplot2)

# Sample data
df <- data.frame(
  x = c(1, 2, 3, 4, 5, 6),
  y = c(2, 3, 2.5, 4.5, 3.8, 5),
  group = c("A", "A", "B", "B", "C", "C")
)

# Create the plot
ggplot(df, aes(x = x, y = y, color = group, shape = group)) +
  geom_point(size = 4) +
  
  # Manual color scale
  scale_color_manual(
    values = c("A" = "red", "B" = "blue", "C" = "darkgreen"),
    name = "Group Colors",                           # Custom legend title
    labels = c("Alpha", "Beta", "Gamma")             # Custom legend labels
  ) +
  
  # Manual shape scale
  scale_shape_manual(
    values = c("A" = 16, "B" = 17, "C" = 15),
    name = "Group Shapes",                           # Custom shape legend title
    labels = c("Alpha", "Beta", "Gamma")
  ) +
  
  # Customize guides (optional: order, override aesthetics, etc.)
  guides(
    color = guide_legend(order = 1, override.aes = list(size = 5)),
    shape = guide_legend(order = 2)
  ) +
  
  labs(title = "Custom Legend Example with Manual Scales") +
  theme_minimal()
