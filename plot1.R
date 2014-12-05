# Author: James Shields
# Purpose:  Generate a plot for the first course project in
#           Coursera's Exploratory Data Analysis class.

# create a data directory if it does not already exist
if (!file.exists("./data/")){ dir.create("./data") }

# download data if it has not already been downloaded
if (!file.exists("./data/Electric_Power_Data.zip")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="./data/Electric_Power_Data.zip",method="curl")
    unzip("./data/Electric_Power_Data.zip", exdir="./data/")
}

# read in data
power_data <- read.table("./data/household_power_consumption.txt",
                         sep = ";", header=TRUE,
                         stringsAsFactors=FALSE, na.strings=c("?")
                       )
