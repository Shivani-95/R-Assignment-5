# Demonstrate how to use geom_point() 
#to modify size and shape of points.

# Load ggplot2
library(ggplot2)

# Create example data
x<-c(1,2,3,4,5)
y<-c(3,7,4,8,6)
data<-data.frame(x,y)

# Create a scatter plot with custom size and shape
ggplot(data,aes(x = x, y = y)) +
  geom_point(size = 4, shape = 17)

