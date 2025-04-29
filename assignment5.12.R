# Demonstrate how to save a plot as a PDF file.

# Load library
library(ggplot2)

# Create a plot
p<-ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width,color = Species))+
  geom_point()+
  theme_minimal()

# Save the plot as a pdf

pdf("sepal_plot.pdf",width = 7,height = 5)
print(p)
dev.off()