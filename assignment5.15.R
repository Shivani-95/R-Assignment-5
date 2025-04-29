# Write R code to add annotations (text and arrows) to a ggplot plot.

# Load ggplot2
library(ggplot2)

# Create the base plot
p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  theme_minimal()

# Add text and arrow annotations
p +
  annotate("text", x = 7.5, y = 4.2, label = "High Sepal Area", color = "black", size = 4, fontface = "bold") +
  annotate("segment", 
           x = 7.3, xend = 7, 
           y = 4.1, yend = 3.8,
           arrow = arrow(length = unit(0.2, "cm")), 
           color = "black")
