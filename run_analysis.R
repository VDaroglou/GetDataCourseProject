# install (if necessary) and load data manipulation packages
library(plyr)
library(reshape2)


# STEP 1: Merge the training and the test sets to create one data set

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
names(subject_train) <- "SubjectID"
names(subject_test) <- "SubjectID"

# rename column names for measurment files, X_train and X_test
names(X_train) <- features$V2
names(X_test) <- features$V2

# rename column name for activities files
names(y_train) <- "Activity"
names(y_test) <- "Activity"

# merge the training and test sets into one data set
train <- cbind(subject_train, y_train, X_train)
test <- cbind(subject_test, y_test, X_test)
combined_data <- rbind(train, test)



# STEP 2: Extract only the measurements on the mean and standard deviation
# for each measurement.

# determine which columns contain "mean()" or "std()" and
# keep the subjectID and activity columns
meanstdcolumns <- grepl("mean\\(\\)", names(combined_data)) |
                grepl("std\\(\\)", names(combined_data))

meanstdcolumns[1:2] <- TRUE

meanstd_data <- combined_data[, meanstdcolumns]



# STEP 3: Use descriptive activity names to name the activities
# in the data set.

# read activity labels
activity_labels<-read.table("UCI HAR Dataset\\activity_labels.txt")
activity_labels$V2 <- gsub("_"," ", activity_labels$V2)


# change the activity column from number to descriptive activity names
meanstd_data$Activity <- factor(meanstd_data$Activity, labels = activity_labels$V2)


# STEP 4: Appropriately label the data set with descriptive
# variable names.
# (See codebook.md for an explanation of the variable names.)

names(meanstd_data) <- make.names(names(meanstd_data))
names(meanstd_data) <- gsub("\\.", "", names(meanstd_data))
names(meanstd_data) <- gsub("BodyBody", "Body", names(meanstd_data))
names(meanstd_data) <- gsub("tBody", "Body", names(meanstd_data))
names(meanstd_data) <- gsub("fBody", "FFTBody", names(meanstd_data))
names(meanstd_data) <- gsub("tGravity", "Gravity", names(meanstd_data))
names(meanstd_data) <- gsub("fGravity", "FFTGravity", names(meanstd_data))
names(meanstd_data) <- gsub("Acc", "Acceleration", names(meanstd_data))
names(meanstd_data) <- gsub("Gyro", "AngularVelocity", names(meanstd_data))
names(meanstd_data) <- gsub("Mag", "Magnitude", names(meanstd_data))
names(meanstd_data) <- gsub("std", "SD", names(meanstd_data))
names(meanstd_data) <- gsub("mean", "Mean", names(meanstd_data))
names(meanstd_data) <- gsub("X", "XAxis", names(meanstd_data))
names(meanstd_data) <- gsub("Y", "YAxis", names(meanstd_data))
names(meanstd_data) <- gsub("Z", "ZAxis", names(meanstd_data))



# STEP 5: From the data set in step 4, creates a second, independent tidy data
# set with the average of each variable for each activity and each subject

tidy_data <-ddply(meanstd_data, c("SubjectID","Activity"), numcolwise(mean))

# write the tidy data set to a file for project submission
write.table(tidy_data, "tidy_data_set.txt", row.names=FALSE)
