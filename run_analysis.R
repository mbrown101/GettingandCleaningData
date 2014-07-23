### run_analysis.R is the R script used to construct the tidy data set.  
### This code requires the samsung data to be in the working directory

x.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt')
y.test <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt')
x.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt')
y.train <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt')
features <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/features.txt')
activity.labels <- read.table('~/R/UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt')

data.test <- cbind(y.test , x.test )
data.train <- cbind(y.train , x.train)
data <- rbind(data.test ,data.train)
