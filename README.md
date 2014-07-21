GettingandCleaningData
======================

### This README.md is in support of the Coursera Getting and Cleaning Datam Course Project in JULY 2014

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project submittal consists of:
     - Tidy data set 
     - Github repository with script for performing the analysis run_analysis.R
     - Code book that describes the variables, the data, and any transformations or work performed to clean up the data called CodeBook.md.
     - README.md which explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script used to produce the tidy data set achieves the following: 
     - Merges the training and the test sets to create one data set.
     - Extracts only the measurements on the mean and standard deviation for each measurement. 
     - Uses descriptive activity names to name the activities in the data set
     - Appropriately labels the data set with descriptive variable names. 
     - Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

