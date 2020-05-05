# Author: Dmitry Kozhevnikov
# Data: 05.05.2020
# John Hopkins University. Exploratory Data Analisys. Course Project 1.   

# Program description:
# The aim of the program to prepare the data for the analysis. 

# Setting the work directory:
wdir <- getwd()

# Downloading the Data Set and getting the data
url_dat <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url_dat, file.path(wdir, "Data.zip"))
unzip("Data.zip")

# Reading and subsetting the data:
dataSet <- read.table(file.path(wdir, "household_power_consumption.txt"), sep = ";", header = TRUE, na.strings = "?",
                      stringsAsFactors = FALSE)
dataSet <- subset(dataSet, Date == "1/2/2007" | Date == "1/2/2007")

# Converting the "Date" and "Time" variables to Date/Time classes by "lubridate" package:
dataSet$Date <- as.Date(dataSet$Date, "%d/%m/%Y")
dataSet$Time <- strptime(dataSet$Time, "%H:%M:%S")

# Saving the sudsetted data to data_set.txt file and remowing "household_power_consumption.txt" 
# and "Data.zip" files from the work directory:
write.table(dataSet, file = "data.txt", sep = " ", row.name = FALSE)
rm_file(file.path(wdir), "household_power_consumption.txt", "Data.zip")

# Removing objects from an Environment
rm(url_dat, dataSet, wdir)