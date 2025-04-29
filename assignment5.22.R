#  Demonstrate the combined usage of geom_point, geom_line,
#and geom_hline in a single ggplot.

# Load ggplot2
library(ggplot2)

# Sample dataset
df <- data.frame(
  Time = 1:10,
  Value = c(5, 7, 6, 9, 12, 11, 13, 10, 9, 14)
)

# Calculate mean value for the horizontal line
mean_value <- mean(df$Value)

# Create the plot
ggplot(df, aes(x = Time, y = Value)) +
  geom_point(color = "blue", size = 3) +                 # Points
  geom_line(color = "darkgreen", linewidth = 1) +        # Line connecting points
  geom_hline(yintercept = mean_value,                   # Horizontal line at mean
             linetype = "dashed", color = "red") +
  labs(title = "Combined geom_point, geom_line, and geom_hline",
       y = "Value", x = "Time") +
  theme_minimal()
