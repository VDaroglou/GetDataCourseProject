# Code Book

## Overview

The [tidy_data_set.txt](./tidy_data_set.txt) file is a tidy subset of the data provided in the Human Activity Recognition Using Smartphones Data Set. This data set contains the average of each variable for each activity and each subject. There are 30 volunteers performed 6 different activities.
Variables names and activities are described below.
The source data is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

## Raw Data transformation
The raw data sets are processed with the script [run_analysis.R](./run_analysis.R) script to create a tidy data set.
The steps perfomed are:
1.  Merge the training and the test sets to create one data set. This analysis was performed using only the files above, and did not use the raw signal data. Therefore, the data files in the "Inertial Signals" folders were ignored.(561 variable columns total, in the initial combined data set; 563 columns including the TestSubject and Activity columns; 10299 observations - row)
2.  Extract only the measurements on the mean and standard deviation for each measurement.
