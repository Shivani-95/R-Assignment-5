# Add horizontal and vertical reference lines to a plot using ggplot2.

# Load ggplot2
library(ggplot2)

# Base plot
p<-ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width,colour = Species))+
  geom_point()+
  theme_minimal()

# add reference line
p +
  geom_hline(yintercept = 3, linetype = "dashed",color ="blue") +
  geom_vline(xintercept = 6,linetype ="dotted",color ="red")+
  labs(title = "Sepal Dimension with Reference Lines")