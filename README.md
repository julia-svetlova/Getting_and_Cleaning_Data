Getting_and_Cleaning_Data
=========================

This is a repository for a code written for the Coursera Getting and Cleaning Data Course Project through Johns Hopkins University.

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.  
The goal is to prepare tidy data that can be used for later analysis.  

The data to analyse represent data collected from the accelerometers from the Samsung Galaxy S smartphone.  

Source data for the project could be downloaded from here:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

Unzip files to your R working directory.   
Copy file run_analysis.R to your R working directory.   

In RStudio:  
 setwd("your R workiking directory")  
 source("run_analysis.R")  

Reading data:  
 data <- read.table("./final_data_set.txt")  

It is 180x68 because there are 30 subjects and 6 activities, thus for each activity and each subject we got 30x6 = 180 rows.
And we got 66 measurements on the mean and standard deviation for each measurement + subject_id + activity name.

Note that the provided R script has no assumptions on numbers of records, only on locations of files.
