# GettingCleanDataCourseProject

The script run_analysis.R contains the function run_analysis() which performs the necessary transformation on the data set.

The function first download the raw dat from the internet.  It combines the separte data measurement, activity information and subject information tables into a single data frame.
It combines the test and train data to give a single data frame containing all information.

The script then removes duplicate columns and calculates the average of each grouped by the subject and activity as required. 
