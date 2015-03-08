# Load data from pconsumption.R
source("./ExData_Plotting1/pconsumption.R")

# Plot 2

# Activate device and assign settings
png(filename = "./ExData_Plotting1/plot2.png", 
    width = 480, height = 480, units = "px", bg = "white")

# Plot Global_active_power and assign y-axis label
plot(pconsumption$DateTime, pconsumption$Global_active_power, 
     ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")

#Turn off device
dev.off()
