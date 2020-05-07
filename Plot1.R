# Author: Dmitry Kozhevnikov
# Data: 07.05.2020
# John Hopkins University. Exploratory Data Analisys. Course Project 1.   

#Program description:
# The aim of the program to make a histogram for "Global_active_power" variable for the dates 2007-02-01 and 2007-02-02. 



# Setting the work directory:
wdir <- getwd()

# Reading the Data Set:
dataSet <- read.table(file.path(wdir, "data.txt"), sep = ";", header = TRUE, stringsAsFactors = FALSE)

# Making the histogram for "Global_active_power" variable:
hist(dataSet$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", main = "Global Active Power")

# Saving the histogram to a PNG file with a width of 480 pixels and a height of 480 pixels:
dev.copy(png, file = "Plot1.png", width = 480, height = 480)
dev.off()

# Removing objects from an Environment:
rm(dataSet, wdir)
