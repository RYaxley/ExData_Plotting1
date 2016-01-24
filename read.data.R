setwd("~/Exploratory.Data.Analysis/code/Assignment.1/ExData_Plotting1")

if(!file.exists("data")){
  dir.create("./data")
}

if(!file.exists("./data/household_power_consumption.zip")){
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url, destfile="./data/household_power_consumption.zip", method="curl")
}

data <- read.table(unz("./data/household_power_consumption.zip", "household_power_consumption.txt"), header=T, quote="\"", sep=";", na.strings="?")

# Convert date format
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- strptime(data$DateTime, format="%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$DateTime)

# Subset data by dates
sub <- subset(data, Date=="2007-02-01" | Date=="2007-02-02")

# Write subsetted data
write.csv(sub, file="data/household.power.subset.csv", row.names=FALSE)
