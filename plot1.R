# Author: James Shields
# Purpose:  Generate a histogram of Global Active Power
# for the first course project in Coursera's
# Exploratory Data Analysis class.

# The code for downloading the data and preparing it for analysis
# is stored in the script get_data.R.
# Load the source file and assign the data to the variable "data".
source("./get_data.R")
data <- get_data()

# open a png graphics device
png(filename="./plot1.png", width=480, height=480)

# create histogram of Global Active Power over time
hist(data$Global_active_power, col="Red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

# close the png graphics device
dev.off()
