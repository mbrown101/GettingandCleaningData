### run_analysis.R is the R script used to construct the tidy data set.  
### This code requires the samsung data to be in the working directory

### Read in data
x.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt')
y.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt')
x.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt')
y.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt')
features <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/features.txt')
activity.labels <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt')

### Assign column names using the features table
colnames(x.train) <- features[,2]
colnames(x.test) <- features[,2]
colnames(y.test) <- 'activity'
colnames(y.train) <- 'activity'

### combine test and training data
data.test <- cbind(y.test , x.test )
data.train <- cbind(y.train , x.train)
data <- rbind(data.test ,data.train)

### find only those rows that are mean or std
data.meanstd <- grep("mean|std" , colnames(data))
