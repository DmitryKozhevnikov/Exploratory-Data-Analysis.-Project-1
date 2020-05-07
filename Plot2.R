# Author: Dmitry Kozhevnikov
# Data: 07.05.2020
# John Hopkins University. Exploratory Data Analisys. Course Project 1.   

#Program description:
# The aim of the program to make a scatterplot for "Global_active_power" vs "Time" variables. 



# Setting the work directory:
wdir <- getwd()

# Reading the Data Set:
dataSet <- read.table(file.path(wdir, "data.txt"), sep = ";", header = TRUE, stringsAsFactors = FALSE)

# Converting the "Date" and "Time" variables to Date/Time classes:
dataSet$Time <- paste(dataSet$Date, dataSet$Time) # Changing the "Time" variable by concatenating the "Date" and the "Time" variables
# to make plots correctly 
dataSet$Date <- as.Date(dataSet$Date, "%d/%m/%Y")
dataSet$Time <- strptime(dataSet$Time, "%d/%m/%Y %H:%M:%S")

# Making the Scatterplot for "Global_active_power" and "Times" variable:
plot(dataSet$Time, dataSet$Global_active_power, col = "blue", ylab = "Global Active Power (kilowatts)",
     xlab = "", main = "Global Active Power", type = "l")

# Saving the histogram to a PNG file with a width of 480 pixels and a height of 480 pixels:
dev.copy(png, file = "Plot2.png", width = 480, height = 480)
dev.off()

# Removing objects from an Environment:
rm(dataSet, wdir)