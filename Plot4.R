# Author: Dmitry Kozhevnikov
# Data: 06.05.2020
# John Hopkins University. Exploratory Data Analisys. Course Project 1.   

#Program description:
# The aim of the program to make multiple base plots. 



# Setting the work directory:
wdir <- getwd()

# Reading the Data Set:
dataSet <- read.table(file.path(wdir, "data.txt"), sep = ";", header = TRUE, stringsAsFactors = FALSE)

# Converting the "Date" and "Time" variables to Date/Time classes:
dataSet$Time <- paste(dataSet$Date, dataSet$Time) # Changing the "Time" variable by concatenating the "Date" and the "Time" variables
# to make plots correctly 
dataSet$Date <- as.Date(dataSet$Date, "%d/%m/%Y")
dataSet$Time <- strptime(dataSet$Time, "%d/%m/%Y %H:%M:%S")

# Making multiple base plots:
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
with(dataSet, {
        plot(Time, Global_active_power, col = "blue", ylab = "Global Active Power (kilowatts)",
             xlab = "", type = "l")
        plot(Time, Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
        plot(dataSet$Time, dataSet$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
        lines(dataSet$Time, dataSet$Sub_metering_2, col = "red", type = "l")
        lines(dataSet$Time, dataSet$Sub_metering_3, col = "blue", type = "l")
        legend("topright", lty = 1, col = c("black", "red", "blue"), 
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), xjust = 1, yjust = 1)
        plot(Time, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
})

# Saving multiple base plots to a PNG file with a width of 480 pixels and a height of 480 pixels:
dev.copy(png, file = "Plot4.png", width = 480, height = 480)
dev.off()