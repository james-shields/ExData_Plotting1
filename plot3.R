# Author:  James Shields
# Purpose: The purpose of this program is to generate line plots
#          for the three sub metering variables in the
#          household power data set.


# load source
source("./get_data.R")
data <- get_data()

# device
png("./plot3.png")

# plot data
plot(x=data$DateTime, y=data$Sub_metering_1,type="n", yaxt="n", ylab="Energy Sub Metering", xlab="")
axis(side=2, at=c(0, 10, 20, 30))

lines(x=data$DateTime, y=data$Sub_metering_1, col="Black")
lines(x=data$DateTime, y=data$Sub_metering_2, col="Red")
lines(x=data$DateTime, y=data$Sub_metering_3, col="Blue")

#close the graphics device
dev.off()
