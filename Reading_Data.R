# Author: Dmitry Kozhevnikov
# Data: 06.05.2020
# John Hopkins University. Exploratory Data Analisys. Course Project №1.   

# Program description:
# The aim of the program to prepare the data for the analysis. 

# Setting the work directory:
wdir <- getwd()

# Downloading the Data Set and getting the data
url_dat <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url_dat, file.path(wdir, "Data.zip"))
unzip("Data.zip")

# Reading and subsetting the data (memory volume required = 2 075 259 rows * 9 columns * 8 baytes = 142.5 Megabytes):
dataSet <- read.table(file.path(wdir, "household_power_consumption.txt"), sep = ";", header = TRUE, na.strings = "?",
                      stringsAsFactors = FALSE)
dataSet <- dataSet[grep("^1/2/2007|^2/2/2007", dataSet$Date),]

# Saving the sudsetted data to data_set.txt file and remowing "household_power_consumption.txt" 
# and "Data.zip" files from the work directory:
write.table(dataSet, file = "data.txt", sep = ";", row.name = FALSE)
rm_file(file.path(wdir), "household_power_consumption.txt", "Data.zip")

# Removing objects from an Environment
rm(url_dat, dataSet, wdir)