# GetDataCourseProject
Repository for Course Project for Getting and Cleaning Data on Coursera

## Overview
The goal of this Course project is to create an R-script that takes raw data from the Human Activity Recognition Using Smartphones Data Set, imports it into R, and transforms it into a tidy data subset.
The source data is available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


This Repo contains:
- [run_analysis.R](./run_analysis.R)    R Script to transform raw data set in a tidy one
- [tidy_data_set.txt](./tidy_data_set.txt)	The tidy data set
- [codebook.md](./codebook.md) 		  Describes the variables, the data, and any transformations performed to clean up the data
- [README.md](./Readme.md)		    This file. README.md describes the overall process.


## Before runnng the R script
1. Clone Repo in your working directory
2. Download the zip file from [this URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
3. Unzip .zip file in your working directory
4. Open a R console and set the working directory to the repository root
5. Run [run_analysis.R](./run_analysis.R) script



**NOTES:**
1. [run_analysis.R](./run_analysis.R) script requires **plyr** and **reshape2** packages. Be sure to install them, if needed, before running the R script.
2. The references to file locations in run_analysis.R are written to work with the **Windows** file system. You'll need to modify the file paths in the read.table calls to run on Mac/Linux systems.

