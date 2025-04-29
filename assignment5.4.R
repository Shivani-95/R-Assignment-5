# Create a line plot connecting points using ggplot and geom_line().

# load ggplot2
library(ggplot2)

# Create example data
x<-c(1,2,3,4,5)
y<-c(3,7,4,8,6)
data<-data.frame(x,y)


# Create a line plot
ggplot(data,aes(x = x,y = y)) +
  geom_line()