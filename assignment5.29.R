# Write code to implement a custom plot theme in 
# ggplot2, adjusting fonts, backgrounds, and grid lines.


# Load ggplot2
library(ggplot2)

# Define a custom theme function
theme_custom <- function() {
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5, family = "serif"),
    axis.title = element_text(size = 14, face = "italic", family = "sans"),
    axis.text = element_text(size = 12, family = "mono", color = "gray20"),
    panel.background = element_rect(fill = "white"),
    plot.background = element_rect(fill = "#f0f0f0", color = NA),
    panel.grid.major = element_line(color = "gray80", linetype = "dashed"),
    panel.grid.minor = element_blank(),
    legend.background = element_rect(fill = "white", color = "gray70"),
    legend.title = element_text(face = "bold", size = 12),
    legend.text = element_text(size = 10),
    panel.border = element_rect(color = "black", fill = NA, linewidth = 1)
  )
}

# Example plot using the custom theme
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(title = "Fuel Efficiency vs Weight",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon",
       color = "Cylinders") +
  theme_custom()
