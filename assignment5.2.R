 #Use qplot() to create a simple scatter plot
#with vectors x and y.

# load the ggplot2 package
library(ggplot2)

# Create some example data

x<-c(1,2,3,4,5)
y<-c(3,7,4,8,6)

# Create some simple scatter plot using qplot()
qplot(x,y)