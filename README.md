# Getting-and-Cleaning-Data-Course-Project

### Variable/Column names of the submitted data set
The variable names are taken as the names of the features, which are are already descriptive. More info can be find directly in the features_info.txt in the zip file from the data source, available also with this repo.

### run_analysis.R
Following steps are done in the R script
1. Load the needed package
1. Download and unzip the file
1. Assignment step 1
      1. Take data from training and test folders, including 
          - Data set from X_train/test.txt
          - Label/activity from y_train/test.txt
          - Subject/person from subject_train/test.txt
      1. Merge data set, give it to "allSet"
1. Assignment step 2
    1. Merge the lable and subject
    1. Get the list of features from features.txt
    1. Use the feature names as the variable names of "allSet"
    1. Keep columns/variables that represent mean or std
1. Assignment step 3 
    1. Add label/activity and subject as two new variables to the data set
    1. assign proper variable names for the two new columns
1. Assignment step 4
    1. assign proper activity names according to "activity_labels.txt"
1. Assignment step 5
    1. Data set in step 4 is not tidy, as there are duplicates in column "activity" and "subject". The data set can be made tidy by taking the mean of rows that have same values in activity and subject.
    1. Find the unique combination of "activity" and "subject"
    1. For each of these combinations, calculate the mean of all variables, and the result should be a new row of the final tidy data set we want to biuld.
1. Last step: write the result into a local txt called result.txt
