# Add titles and axis labels to your plot using ggplot2.

# Load ggplot2
library(ggplot2)

# Create example data 

x<-c(1,2,3,4,5)
y<-c(3,7,4,8,6)
data<-data.frame(x,y)

# Create a line plot with titles and labels
ggplot(data,aes(x=x,y=y)) +
  geom_line() +
  ggtitle("simple line plot") +
  xlab("x-Axis Label")+
  ylab("y-Axis Label")
  