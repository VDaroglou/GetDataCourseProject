# install (if necessary) and load data manipulation packages
library(plyr)
library(reshape2)

# read data into data frames
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")

subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")


# add column name for subject files
names(subject_train) <- "subjectID"
names(subject_test) <- "subjectID"
