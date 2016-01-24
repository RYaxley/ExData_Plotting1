setwd("~/Exploratory.Data.Analysis/code/Assignment.1/ExData_Plotting1/")

data <- read.csv("data/household.power.subset.csv")

# Convert date format
data$DateTime <- strptime(data$DateTime, format="%Y-%m-%d %H:%M:%S")

par(mfrow=c(2,2)) # 2 row x 2 col plot matrix
par(mar=c(4,5,1,1)) # Tweak margin sizes
par(bg=NA) # Make background transparent.

# Plot 1
plot(data$DateTime, data$Global_active_power, 
     xlab="", ylab="Global Active Power", type="n", cex.lab=.8, cex.axis=.8)
lines(data$DateTime, data$Global_active_power)

# Plot 2
plot(data$DateTime, data$Voltage, xlab="", ylab="Voltage", type="n", cex.lab=.8, cex.axis=.8)
lines(data$DateTime, data$Voltage)

# Plot 3
plot(data$DateTime, data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n", cex.lab=.8, cex.axis=.8)
lines(data$DateTime, data$Sub_metering_1, col="black")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", pch=c(NA,NA,NA), col=c("black","red","blue"), 
       lty=c(1,1,1), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="n", cex=.7 )

# Plot 4
plot(data$DateTime, data$Global_reactive_power, xlab="", ylab="Global Reactive Power", type="n", cex.lab=.8, cex.axis=.8)
lines(data$DateTime, data$Global_reactive_power)

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
