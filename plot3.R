# Load data from pconsumption.R
source("./ExData_Plotting1/pconsumption.R")

# Plot 3

# Activate device and assign settings
png(filename = "./ExData_Plotting1/plot3.png", 
    width = 480, height = 480, units = "px", bg = "white")

# Plot Sub_metering_1 and assign y-axis label
plot(pconsumption$DateTime, pconsumption$Sub_metering_1, 
     col = "black", ylab = "Energy sub metering", 
     xlab = "", type = "l")

# Add lines for Sub_metering_2 and Sub_metering_3
lines(pconsumption$DateTime, pconsumption$Sub_metering_2, col = "red")
lines(pconsumption$DateTime, pconsumption$Sub_metering_3, col = "blue")

# Add legend
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = "solid")

#Turn off device
dev.off()
