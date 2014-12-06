# Author: James Shields
# Purpose:  Generate a line plot of Global Acctive Power for the first
# course project in Coursera's Exploratory Data Analysis class.

# The code for downloading the data and preparing it for analysis
# is stored in the script get_data.R.
# Load the souce file and assign the data to the variable "data."
source("./get_data.R")
data <- get_data()

# open a png graphics device
png(filename="./plot2.png", width=480, height=480)

# create a line plot of Global Average Power over time
plot(data$DateTime, data$Global_active_power, type="l", xlab="",
     ylab="Global Active Power (kilowatts)", main="")

# close the png graphics device
dev.off()
