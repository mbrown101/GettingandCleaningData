GettingandCleaningData
======================

### This README.md is in support of the Coursera Getting and Cleaning Data Course Project in JULY 2014

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project submittal consists of:

     - Tidy data set 
     - Tidy data set formateed as MD file posted in GITHUB
     - Github repository with script for performing the analysis run_analysis.R
     - CodeBook.md which is a code book describing variables, data, and transformations to clean the data
     - README.md which explains how all of the scripts work and how they are connected.  


###instructions for using R script: run_analysis.R: 
- The R script (run_analysis.R) is run from the working directory
- The raw data has been from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- The raw data is unzipped into the working directory (where the R script: run_analysis.R also exists)
- Run run_analysis.R
- The output is created as an R objecct and is also writted to the working directory as "tidydata.csv"  


### General description of the raw data and it's source:

The webpage for this project is: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
This page descibes data collected from 30 subjects wearing a fitness recording device which is connected to a Samsung Galaxy S smartphone. A full description of how the data was obtained is here: 

The raw roject data is here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


###General description of the R script: run_analysis.R purpose:
The script used to produce the tidy data set achieves the following: 

     - Merges the training and the test sets to create one data set.
     - Extracts only the measurements on the mean and standard deviation for each measurement. 
     - Uses descriptive activity names to name the activities in the data set
     - Appropriately labels the data set with descriptive variable names. 
     - Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

