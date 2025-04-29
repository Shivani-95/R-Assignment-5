# Create a ggplot plot with customized colors for different categories.

# Load ggplot2
library(ggplot2)

# Custom color palette
custom_colors <- c("setosa" = "darkgreen", 
                   "versicolor" = "orange", 
                   "virginica" = "purple")

# Create the plot with custom colors
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_manual(values = custom_colors) +
  labs(title = "Customized Colors for Iris Species",
       x = "Sepal Length", y = "Sepal Width", color = "Species") +
  theme_minimal()
