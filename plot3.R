# Author:  James Shields
# Purpose: The purpose of this program is to generate line plots
#          for the three sub metering variables in the
#          household power data set.


# The code for downloading the data and preparing it for analysis is stored
# in the script get_data.R.
# Load the source file and assign the data to the variable "data".
source("./get_data.R")
data <- get_data()

# device
png("./plot3.png")

# plot data

# line plots of the "Sub_metering" variables
plot(x=data$DateTime, y=data$Sub_metering_1,type="n", yaxt="n", ylab="Energy Sub Metering", xlab="")
axis(side=2, at=c(0, 10, 20, 30))

# add data series one at a time using the lines function
lines(x=data$DateTime, y=data$Sub_metering_1, col="Black")
lines(x=data$DateTime, y=data$Sub_metering_2, col="Red")
lines(x=data$DateTime, y=data$Sub_metering_3, col="Blue")

# add a legend to the top right
legend("topright", lty=c(1,1,1), col=c("Black", "Red", "Blue"),
       legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"))

#close the graphics device
dev.off()
