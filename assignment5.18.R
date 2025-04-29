# Demonstrate adding a legend manually using ggplot2.

# Load ggplot2
library(ggplot2)

# Sample data
df <- data.frame(
  x = c(1, 2, 3, 4, 5, 6),
  y = c(2, 3, 2, 5, 4, 6),
  group = c("A", "A", "B", "B", "C", "C")
)

# Create the plot with manual legend
ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(size = 4) +
  scale_color_manual(
    values = c("A" = "red", "B" = "blue", "C" = "green"),
    name = "Custom Group Label",                      # Custom legend title
    labels = c("Group A", "Group B", "Group C")       # Custom legend labels
  ) +
  labs(title
       