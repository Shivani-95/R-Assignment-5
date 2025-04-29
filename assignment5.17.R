#Use logical conditions to highlight subsets of points in different colors.

# Load library
library(ggplot2)

# Create a new variable for highlighting
iris$Highlight <- ifelse(iris$Sepal.Length > 6.5, "High", "Normal")

# Create the plot
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Highlight)) +
  geom_point(size = 3) +
  scale_color_manual(values = c("High" = "red", "Normal" = "gray")) +
  labs(title = "Highlighting Points with Sepal.Length > 6.5",
       color = "Sepal Length Category") +
  theme_minimal()
