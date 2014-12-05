# Author: James Shields
# Purpose:  Download household power consumption data and subset
#           it to 02/01/2007 and 02/02/2007

get_data <- function(){
    
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
    
    # convert Date and Time columns in the data frame to a POSIX value
    power_data$DateTime <- paste(power_data$Date, power_data$Time)
    power_data$DateTime <- strptime(power_data$DateTime,
                                    format="%d/%m/%Y %H:%M:%S")

    # subset the power data to only 2007-02-01 and 2007-02-02
     power_data <- power_data[power_data$DateTime >= as.POSIXlt("2007-02-01") & power_data$DateTime < as.POSIXlt("2007-02-03"),]

    # return the subsetted power data
    power_data
}
