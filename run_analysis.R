# install (if necessary) and load data manipulation packages
library(plyr)
library(reshape2)



## STEP 1: Merges the training and the test sets to create one data set

# read data into data frames
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")

subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")

# read in the features
features <- read.table("UCI HAR Dataset\\features.txt")

# rename column name for subject files
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"

# rename column names for measurment files, X_train and X_test
names(X_train) <- features$V2
names(X_test) <- features$V2

# rename column name for activities files
names(y_train) <- "activity"
names(y_test) <- "activity"

# merge the training and test sets into one data set
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
combined_data <- rbind(train, test)



## STEP 2: Extracts only the measurements on the mean and standard deviation
## for each measurement.

# determine which columns contain "mean()" or "std()" and
# keep the subjectID and activity columns
meanstdcolumns <- grepl("mean\\(\\)", names(combined_data)) |
                grepl("std\\(\\)", names(combined_data))

meanstdcolumns[1:2] <- TRUE

meanstd_data <- combined_data[, meanstdcolumns]
