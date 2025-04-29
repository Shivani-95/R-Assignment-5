# Create a plot with different line types and widths.

# Load library
library(ggplot2)

# Aggregate data: mean Sepal.Length by Species
library(dplyr)
iris_mean <- iris %>%
  group_by(Species) %>%
  summarise(Sepal.Length = mean(Sepal.Length), 
            Sepal.Width = mean(Sepal.Width))

# Create the plot
ggplot(iris_mean, aes(x = Sepal.Length, y = Sepal.Width, group = Species)) +
  geom_line(aes(linetype = Species, size = Species, color = Species)) +
  scale_linetype_manual(values = c("setosa" = "solid", "versicolor" = "dashed", "virginica" = "dotted")) +
  scale_size_manual(values = c("setosa" = 0.5, "versicolor" = 1, "virginica" = 1.5)) +
  labs(title = "Different Line Types and Widths by Species") +
  theme_minimal()
