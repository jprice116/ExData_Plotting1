# Load data from pconsumption.R
source("./ExData_Plotting1/pconsumption.R")

# Plot 3

# Activate device and assign settings
png(filename = "./ExData_Plotting1/plot4.png", 
width = 480, height = 480, units = "px", bg = "white")

# Arrange 4 chart output
par(mfrow = c(2,2))

# Plot Global_active_power (top left)
plot(pconsumption$DateTime, pconsumption$Global_active_power, 
     ylab = "Global Active Power", xlab = "", type = "l")

# Plot Global_active_power (top right)
plot(pconsumption$DateTime, pconsumption$Voltage, 
     ylab = "Voltage", xlab = "datetime", type = "l")

# Plot Sub_metering (bottom left)
plot(pconsumption$DateTime, pconsumption$Sub_metering_1, 
     col = "black", ylab = "Energy sub metering", 
     xlab = "", type = "l")
lines(pconsumption$DateTime, pconsumption$Sub_metering_2, col = "red")
lines(pconsumption$DateTime, pconsumption$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = "solid", bty = "n")

# Plot Sub_metering (bottom right)
plot(pconsumption$DateTime, pconsumption$Global_reactive_power, 
     xlab = "datetime", ylab = "Global_reactive_power", type = "l")

#Turn off device
dev.off()
