### run_analysis.R is the R script used to construct the tidy data set.  
### This code requires the samsung data to be in the working directory


### Read in data
x.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt')
y.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt')
subject.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt')
x.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt')
y.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt')
subject.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt')

features <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/features.txt')
activity.labels <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt')

### step 1
### Assign column names using the features table
colnames(x.train) <- features[,2]
colnames(x.test) <- features[,2]
colnames(y.test) <- 'act.index'
colnames(y.train) <- 'act.index'
colnames(subject.test) <- 'subject'
colnames(subject.train) <- 'subject'

### combine test and training data
data.test <- cbind(subject.test, y.test , x.test )
data.train <- cbind(subject.train, y.train , x.train)
data <- rbind(data.test ,data.train)

### step 2
### find only those rows that are mean or std
### note: need to grep for the string 'mean()' to avoid the string 'meanfreq'  
data.meanstd <- grep("subject|mean()|std()|act.index" , colnames(data))

### select only that data with 'subject', 'mean()' or 'std()' or 'activity' in their title 
data.filtered <- data[,data.meanstd]


### step 3
### merge the activity labels
colnames(activity.labels) <- cbind('act.index' , 'activity')
data.activity <- merge( activity.labels , data.filtered , by.x = "act.index"  , by.y = "act.index" )
data.tidy <- data.activity[,2:length(colnames(data.activity))]

### Step 4 rename variables
data.tidy.colnames <- colnames(data.tidy)

data.tidy.colnames <- gsub('Acc', 'Acceleration' , data.tidy.colnames)    
data.tidy.colnames <- gsub('-mean()', 'MeanValue' , data.tidy.colnames)   
data.tidy.colnames <- gsub('-std()', 'StandardDeviation' , data.tidy.colnames) 
data.tidy.colnames <- gsub("Freq()", 'Frequency' , data.tidy.colnames , fixed=TRUE)
data.tidy.colnames <- gsub("()-X", 'Xaxis' , data.tidy.colnames)  
data.tidy.colnames <- gsub('-Y', 'Yaxis' , data.tidy.colnames) 
data.tidy.colnames <- gsub('-Z', 'Zaxis' , data.tidy.colnames) 
data.tidy.colnames <- gsub('tBody', 'TimeDomainBody' , data.tidy.colnames)  
data.tidy.colnames <- gsub('tGravity', 'TimeDomainGravity' , data.tidy.colnames)
data.tidy.colnames <- gsub('fBody', 'FrequencyDomain' , data.tidy.colnames)
data.tidy.colnames <- gsub("()", '' , data.tidy.colnames , fixed=TRUE)

colnames(data.tidy) <- data.tidy.colnames


### step 5 create xtab with an average of each variable for each activity for each subject
require(stats)
x <- as.factor(colnames(data.tidy))
y <- as.factor(activity.labels[,2])
#xt <- xtabs(mean(data.tidy[data.tidy[,x]==y , data.tidy[y,]==x]))
tidy.components <- split(data.tidy ,data.tidy[,1:2] , drop = FALSE )
