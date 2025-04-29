# Create a ggplot scatter plot,
# and differentiate points by color based on a categorical
 # variable.

# Load required library
library(ggplot2)

# example dataset:iris
data(iris)

# Create Scatter Plot
ggplot(iris,aes(x=Sepal.Length,y = Sepal.Width,color = Species)) +
  geom_point(size =3)+
  labs(title = "sepal dimensions by species",
       x = "sepal length",
       y = "sepal width",
       color = "species")+
  theme_minimal()