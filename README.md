---
title: "Exploratory Data Analysis. Project 1."
author: "Dmitry Kozhevnikov"
date: "07.05.2020"
---

## The Purpose of the Project
To demonstrate the ability to make plots using the base plotting system in R.

## Review criteria
1. Was a valid GitHub URL containing a git repository submitted?
2. Does the GitHub repository contain at least one commit beyond the original fork?
3. Please examine the plot files in the GitHub repository. Do the plot files appear to be of the correct graphics file format?
4. Does each plot appear correct?
6. Does each set of R code appear to create the reference plot?

## Files Description in the Repository
1. **Reading_Data.R** performs following:
+ Downloading the Data Set and getting the data;
+ Saving the sudsetted data to data_set.txt file.

2. **CodeBook.md** describes all variables, data and transformations made with the data.

3. **Plot1.R** performs following:
+ Read the Data Set "data.txt";
+ Make the histogram for "Global_active_power" variable;
+ Save the histogram to the **Plot1.png** file with a width of 480 pixels and a height of 480 pixels.

4. **Plot2.R** performs following:
+ Read the Data Set "data.txt";
+ Convert the "Date" and "Time" variables to Date/Time classes;
+ Make the Scatterplot for "Global_active_power" and "Times" variable;
+ Save the histogram to the **Plot2.png** file with a width of 480 pixels and a height of 480 pixels.

5. **Plot3.R** performs following:
+ Read the Data Set "data.txt";
+ Convert the "Date" and "Time" variables to Date/Time classes;
+ Make the Scatterplot for "Global_active_power" and "Sub_meteting" variables;
+ Save the histogram to the **Plot3.png** file with a width of 480 pixels and a height of 480 pixels.

5. **Plot4.R** performs following:
+ Read the Data Set "data.txt";
+ Convert the "Date" and "Time" variables to Date/Time classes;
+ Make make multiple base plots;
+ Save the multiple plots to the **Plot4.png** file with a width of 480 pixels and a height of 480 pixels.

6. **data.txt** is the TXT file with the subsetted data. 
