# Author:  James Shields
# Purpose: The purpose of this program is to generate line plots
#          for the three sub metering variables in the
#          household power data set.


# load source
source("./get_data.R")
data <- get_data()

# device
png("./plot4.png")

# set parameters to a 2x2 panel of plots
par(mfrow=c(2,2))


# plot data
plot(data$DateTime, data$Global_active_power, xlab="",
     ylab="Global Average Power", type="l")
plot(data$DateTime, data$Voltage, xlab="datetime",
     ylab="Voltage", type="l")

# create multi-series line plot for Sub_metering values
plot(x=data$DateTime, y=data$Sub_metering_1,type="n", yaxt="n", ylab="Energy Sub Metering", xlab="")
axis(side=2, at=c(0, 10, 20, 30))

# add data series one at a time using the lines function
lines(x=data$DateTime, y=data$Sub_metering_1, col="Black")
lines(x=data$DateTime, y=data$Sub_metering_2, col="Red")
lines(x=data$DateTime, y=data$Sub_metering_3, col="Blue")

# add a legend to the top right
legend("topright", lty=c(1,1,1), col=c("Black", "Red", "Blue"),
       legend=c("Sub metering 1", "Sub metering 2", "Sub metering 3"))

plot(x=data$DateTime, y=data$Global_reactive_power, xlab="datetime",
     ylab="Global Reactive Power", type="l")

#close the graphics device
dev.off()
