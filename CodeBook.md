##  Code book for Getting and Cleaning Course Project

### Data:
The data for this project is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data can be accessed from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Description of run_analysis.R 
Initial condition: all files from the data source zip file (noted above) are UNZIPPED in the R working directory

Tidy Dataset Output:

	column names(aggdata)	
-	1	activity
-	2	subject
-	3	TimeDomainBodyAccelerationMeanValueXaxis
-	4	TimeDomainBodyAccelerationMeanValueYaxis
-	5	TimeDomainBodyAccelerationMeanValueZaxis
-	6	TimeDomainBodyAccelerationStandardDeviationXaxis
-	7	TimeDomainBodyAccelerationStandardDeviationYaxis
-	8	TimeDomainBodyAccelerationStandardDeviationZaxis
-	9	TimeDomainGravityAccelerationMeanValueXaxis
-	10	TimeDomainGravityAccelerationMeanValueYaxis
-	11	TimeDomainGravityAccelerationMeanValueZaxis
-	12	TimeDomainGravityAccelerationStandardDeviationXaxis
-	13	TimeDomainGravityAccelerationStandardDeviationYaxis
-	14	TimeDomainGravityAccelerationStandardDeviationZaxis
-	15	TimeDomainBodyAccelerationJerkMeanValueXaxis
-	16	TimeDomainBodyAccelerationJerkMeanValueYaxis
-	17	TimeDomainBodyAccelerationJerkMeanValueZaxis
-	18	TimeDomainBodyAccelerationJerkStandardDeviationXaxis
-	19	TimeDomainBodyAccelerationJerkStandardDeviationYaxis
-	20	TimeDomainBodyAccelerationJerkStandardDeviationZaxis
-	21	TimeDomainBodyGyroMeanValueXaxis
-	22	TimeDomainBodyGyroMeanValueYaxis
-	23	TimeDomainBodyGyroMeanValueZaxis
-	24	TimeDomainBodyGyroStandardDeviationXaxis
-	25	TimeDomainBodyGyroStandardDeviationYaxis
-	26	TimeDomainBodyGyroStandardDeviationZaxis
-	27	TimeDomainBodyGyroJerkMeanValueXaxis
-	28	TimeDomainBodyGyroJerkMeanValueYaxis
-	29	TimeDomainBodyGyroJerkMeanValueZaxis
-	30	TimeDomainBodyGyroJerkStandardDeviationXaxis
-	31	TimeDomainBodyGyroJerkStandardDeviationYaxis
-	32	TimeDomainBodyGyroJerkStandardDeviationZaxis
-	33	TimeDomainBodyAccelerationMagMeanValue
-	34	TimeDomainBodyAccelerationMagStandardDeviation
-	35	TimeDomainGravityAccelerationMagMeanValue
-	36	TimeDomainGravityAccelerationMagStandardDeviation
-	37	TimeDomainBodyAccelerationJerkMagMeanValue
-	38	TimeDomainBodyAccelerationJerkMagStandardDeviation
-	39	TimeDomainBodyGyroMagMeanValue
-	40	TimeDomainBodyGyroMagStandardDeviation
-	41	TimeDomainBodyGyroJerkMagMeanValue
-	42	TimeDomainBodyGyroJerkMagStandardDeviation
-	43	FrequencyDomainAccelerationMeanValueXaxis
-	44	FrequencyDomainAccelerationMeanValueYaxis
-	45	FrequencyDomainAccelerationMeanValueZaxis
-	46	FrequencyDomainAccelerationStandardDeviationXaxis
-	47	FrequencyDomainAccelerationStandardDeviationYaxis
-	48	FrequencyDomainAccelerationStandardDeviationZaxis
-	49	FrequencyDomainAccelerationMeanValueFrequencyXaxis
-	50	FrequencyDomainAccelerationMeanValueFrequencyYaxis
-	51	FrequencyDomainAccelerationMeanValueFrequencyZaxis
-	52	FrequencyDomainAccelerationJerkMeanValueXaxis
-	53	FrequencyDomainAccelerationJerkMeanValueYaxis
-	54	FrequencyDomainAccelerationJerkMeanValueZaxis
-	55	FrequencyDomainAccelerationJerkStandardDeviationXaxis
-	56	FrequencyDomainAccelerationJerkStandardDeviationYaxis
-	57	FrequencyDomainAccelerationJerkStandardDeviationZaxis
-	58	FrequencyDomainAccelerationJerkMeanValueFrequencyXaxis
-	59	FrequencyDomainAccelerationJerkMeanValueFrequencyYaxis
-	60	FrequencyDomainAccelerationJerkMeanValueFrequencyZaxis
-	61	FrequencyDomainGyroMeanValueXaxis
-	62	FrequencyDomainGyroMeanValueYaxis
-	63	FrequencyDomainGyroMeanValueZaxis
-	64	FrequencyDomainGyroStandardDeviationXaxis
-	65	FrequencyDomainGyroStandardDeviationYaxis
-	66	FrequencyDomainGyroStandardDeviationZaxis
-	67	FrequencyDomainGyroMeanValueFrequencyXaxis
-	68	FrequencyDomainGyroMeanValueFrequencyYaxis
-	69	FrequencyDomainGyroMeanValueFrequencyZaxis
-	70	FrequencyDomainAccelerationMagMeanValue
-	71	FrequencyDomainAccelerationMagStandardDeviation
-	72	FrequencyDomainAccelerationMagMeanValueFrequency
-	73	FrequencyDomainBodyAccelerationJerkMagMeanValue
-	74	FrequencyDomainBodyAccelerationJerkMagStandardDeviation
-	75	FrequencyDomainBodyAccelerationJerkMagMeanValueFrequency
-	76	FrequencyDomainBodyGyroMagMeanValue
-	77	FrequencyDomainBodyGyroMagStandardDeviation
-	78	FrequencyDomainBodyGyroMagMeanValueFrequency
-	79	FrequencyDomainBodyGyroJerkMagMeanValue
-	80	FrequencyDomainBodyGyroJerkMagStandardDeviation
-	81	FrequencyDomainBodyGyroJerkMagMeanValueFrequency


Programatic Steps:

+ Merge each training and test data set into one data set
+ Extract  measurements on teh mean and standard deviation for each measurement
+ Add descriptive activities to data set
+ Label data descriptively
+ Create second, independent tidy data set weith the average of each variable for each activity and each subject
