setwd("~/Exploratory.Data.Analysis/code/Assignment.1/ExData_Plotting1/")

data <- read.csv("data/household.power.subset.csv")

# Convert date format
data$DateTime <- strptime(data$DateTime, format="%Y-%m-%d %H:%M:%S")

par(bg=NA) # Make background transparent.

plot(data$DateTime, data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
lines(data$DateTime, data$Sub_metering_1, col="black")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", pch=c(NA,NA,NA), col=c("black","red","blue"), 
       lty=c(1,1,1), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
