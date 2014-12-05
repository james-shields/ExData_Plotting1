# Author: James Shields
# Purpose:  Generate a plot for the first course project in
#           Coursera's Exploratory Data Analysis class.

# Get data
source("./get_data.R")

data <- get_data()

# open a png graphics device
png(filename="./plot2.png", width=480, height=480)

# create histogram
plot(data$DateTime, data$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)", main="")

# close the png graphics device
dev.off()
