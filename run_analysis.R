## Preparation

library(dplyr)
library(tidyr)
## Download the zip file, more instructions see 
## https://github.com/lgreski/datasciencectacontent/blob/master/markdown/rprog-downloadingFiles.md

if(!file.exists("data.zip")) {
    dlMethod <- "curl" # sets default for OSX / Linux
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    if(substr(Sys.getenv("OS"),1,7) == "Windows") dlMethod <- "wininet"
        download.file(url,
              "data.zip",  # stores file in R working directory
              method=dlMethod, # use OS-appropriate method
              mode="wb")        # binary for zip
}
if(!dir.exists("UCI HAR Dataset")){
    unzip(zipfile = "data.zip")
}
## Assignment step 1 
dir_path <- "./UCI HAR Dataset/"
# read training data
trainingSet <- read.table(paste0(dir_path, "train/X_train.txt")) 
trainingLabel <- read.table(paste0(dir_path, "train/y_train.txt"))
trainingSubject <- read.table(paste0(dir_path, "train/subject_train.txt"))
# read test data
testSet <- read.table(paste0(dir_path, "test/X_test.txt"))
testLabel <- read.table(paste0(dir_path, "test/y_test.txt"))
testSubject <- read.table(paste0(dir_path, "test/subject_test.txt"))
# merge data from training and test
allSet <- rbind(trainingSet,testSet)

## Assignment step 2
# combine the label/activity from training and test
allLabel <- rbind(trainingLabel, testLabel)
# combine the test subject/person from training and test
allSubject <- rbind(trainingSubject, testSubject)
rm(list = grep("training|test",ls(), value = T)) # free memory
# read in features
features <- read.table(paste0(dir_path, "features.txt"))
# variable/column names taken as the feature names
names(allSet) <- as.character(features$V2) 
# Assignment step 2: taking only variables that represent mean or std
allSet <- allSet[, grep("mean()|std()", features$V2)]

## Assignment step 3 
# adding Label/activity and Subject as two new variables to the data set
allSet <- cbind(allLabel, allSubject, allSet)
# assign proper variable names
colnames(allSet)[1:2] <- c("activity", "subject")

## Assignment step 4
# assign proper activity names according to "activity_labels.txt"
activity <- read.table(paste0(dir_path, "activity_labels.txt"))
allSet$activity <- activity[allLabel[,1],2]
rm(list = ls()[!grepl("allSet", ls())]) # free memory

## Assignment step 5
# data set in step 4 is not tidy, as there are duplicates in column "activity"
# and "subject". The data set can be made tidy by taking the mean of rows that
# have same values in activity and subject.


# record the column count of the data set
lenToTakeMean <- length(allSet[1,])
# initialize the result 
result <- as_tibble(data.frame())
# find the unique combination of "activity" and "subject"
uniq <- unique(allSet[, 1:2])
# for each of these combinations, calculate the mean of all variables
for (iter in 1:length(uniq[,1])) {
    # find all row numbers that share the same activity and subject
    ind <- allSet$activity == uniq[iter,1] & allSet$subject == uniq[iter,2]
    # put the mean vector in variable match
    match <- sapply(allSet[ind, 3:lenToTakeMean], mean)
    dim(match) <- c(1,lenToTakeMean-2) 
    # merge to the result 
    result <- rbind(result, cbind(uniq[iter,], match))
}
# add proper names to the result variables
names(result) <- names(allSet)
rm(list = ls()[!grepl("result", ls())]) # free memory
# output resutl to a file
write.table(result, "result.txt", row.names = F)
