# Code book 

This code book describes the data, variables and transformations used in the project.

# Data

The data source is a dataset that was taken from the Human Activity Recognition Using Smartphones from the UCI Machince Learning Repository.

A full description about the data is available from the webstite http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data for the project can be found here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The final data result tidydata.txt contains the output of the clean tidy dataset of the project.

# Transformations

The transformations performed include the following steps:

1. Merging the test set with the training sets to create one data set.
2. Changing the activity and subject columns to factors.
3. Extracting only the column names that contain mean and standard deviation.
4. Name the activity column to the appropriate descriptive names.
5. Clean the rest of the column names to an appropriate descriptive variable names.
6. Create a second independent tidy data set of the average of each variable for each activity and subject.

# Variables
* activity: contains the type of activity performed when the test measurement was taken, the activity labels are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* subject: contains the ID of the test subjects from 1 - 30.
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccstdX
* tBodyAccstdY
* tBodyAccstdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccstdX
* tGravityAccstdY
* tGravityAccstdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkstdX
* tBodyAccJerkstdY
* tBodyAccJerkstdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyrostdX
* tBodyGyrostdY
* tBodyGyrostdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkstdX
* tBodyGyroJerkstdY
* tBodyGyroJerkstdZ
* tBodyAccMagMean
* tBodyAccMagstd
* tGravityAccMagMean
* tGravityAccMagstd
* tBodyAccJerkMagMean
* tBodyAccJerkMagstd
* tBodyGyroMagMean
* tBodyGyroMagstd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagstd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccstdX
* fBodyAccstdY
* fBodyAccstdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkstdX
* fBodyAccJerkstdY
* fBodyAccJerkstdZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyrostdX
* fBodyGyrostdY
* fBodyGyrostdZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagstd
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagstd
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagstd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagstd
* fBodyBodyGyroJerkMagMeanFreq

**Mean: the mean average of the measurement.**

**Std: standard deviation of the measurement.**


