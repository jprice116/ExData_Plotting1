# Load data from pconsumption.R
source("./ExData_Plotting1/pconsumption.R")

# Plot 1

# Activate device and assign settings
png(filename = "./ExData_Plotting1/plot1.png", 
    width = 480, height = 480, units = "px", bg = "white")

# Plot Global_active_power and assign labels and color
hist(pconsumption$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")

#Turn off device
dev.off()
