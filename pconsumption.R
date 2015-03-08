# Download file, unzip and save to 
# destfile = "./data/household_power_consumption.txt"

# Read data and subset for data from the dates 2007-02-01 and 2007-02-02
classes <- c("character", "character", "numeric", "numeric", "numeric", 
             "numeric", "numeric", "numeric", "numeric")
pconsumption <- read.table("data/household_power_consumption.txt", 
                           header = TRUE, sep = ";" , na.strings = "?", 
                           colClasses = classes)
pconsumption <- pconsumption[pconsumption$Date == "1/2/2007" | 
                                     pconsumption$Date == "2/2/2007", ]
rm(classes)

# Convert the Date and Time variables to Date/Time classes 
pconsumption$Date <- as.Date(pconsumption$Date, format="%d/%m/%Y")
pconsumption$DateTime <- paste(pconsumption$Date, pconsumption$Time)
pconsumption$DateTime <- strptime(pconsumption$DateTime, 
                                  format="%Y-%m-%d %H:%M:%S")

# Save data as csv file
# write.csv(pconsumption, file = "./ExData_Plotting1/pconsumption.csv")
