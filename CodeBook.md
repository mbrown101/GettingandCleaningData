##  Code book for Getting and Cleaning Course Project

### Data:
The data for this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data can be accessed from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Description of run_analysis.R 
Initial condition: all files from the data source zip file (noted above) are UNZIPPED in the R working directory

Programatic Steps:

+ Merge each training and test data set into one data set
+ Extract  measurements on teh mean and standard deviation for each measurement
+ Add descriptive activities to data set
+ Label data descriptively
+ Create second, independent tidy data set weith the average of each variable for each activity and each subject
