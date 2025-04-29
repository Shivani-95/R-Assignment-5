# Save your plot as a JPEG file using R.

# load ggplot2
library(ggplot2)

# Create example data
x<-c(1,2,3,4,5)
y<-c(3,7,4,8,6)

# open a JPEG device
jpeg("scatterplot.jpg")

# create the plot
qplot(x,y)

# Close the device to save the file
dev.off()
