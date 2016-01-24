setwd("~/Exploratory.Data.Analysis/code/Assignment.1/ExData_Plotting1/")

data <- read.csv("data/household.power.subset.csv")

# Convert date format
data$DateTime <- strptime(data$DateTime, format="%Y-%m-%d %H:%M:%S")

par(bg=NA) # Make background transparent.

plot(data$DateTime, data$Global_active_power, 
     xlab="", ylab="Global Active Power (kilowatts)", type="n")
lines(data$DateTime, data$Global_active_power)

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
