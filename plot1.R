setwd("~/Exploratory.Data.Analysis/code/Assignment.1/ExData_Plotting1/")

data <- read.csv("data/household.power.subset.csv")

par(bg=NA) # Make background transparent.

hist(data$Global_active_power, 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power",
     font=10, col="red")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
