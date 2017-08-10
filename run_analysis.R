#Getting and Cleaning Data Course Project
#Harrison Kirby
#May 2017

#download and extract data
if(!file.exists("data.zip")){
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl, destfile ="data.zip", method = "auto")
}
if(!dir.exists("UCI HAR Dataset")) unzip("data.zip")


#read test data
test <- read.table("UCI HAR Dataset/test/X_test.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

#bind activity, subject, and observations
test_data <- cbind (test_activity, test_subject, test)
rm(test, test_activity, test_subject)

#read train data
train <- read.table("UCI HAR Dataset/train/X_train.txt")
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

#bind activity, subject, and observations
train_data <- cbind (train_activity, train_subject, train)
rm(train, train_activity, train_subject)

#combine data sets
data <- rbind(test_data, train_data)
rm(test_data, train_data)


#apply variable names
features <- read.table("UCI HAR Dataset/features.txt")
variablenames <- as.vector(features$V2)

colnames(data) <- c("activity", "subject", variablenames)
rm(features)


#Extract mean and standard deviation observations
sub <- grepl("mean()", variablenames, fixed = TRUE) | grepl("std()", variablenames, fixed = TRUE)
data <- data[c(TRUE, TRUE, sub)]
rm(sub, variablenames)

#Label the values of the activity variable
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

    #generate character vector of activities based on numeric values of data$activity
act = vector()
for(i in 1:nrow(data)){
    act[i] <- as.character(activities[data[i,1],2])
}

    #replace numeric data$activity with descriptive character vector
data$activity <- as.character(act)
rm(activities, act, i)

#Properly Format variable names
colnames(data) <- tolower(
                      gsub("[[:punct:]]", "", colnames(data))
                  )

#Create a second tidy data set with the average of each variable for each activity and each subject
library(dplyr)

averages <- data.frame()

averages <- data %>%
    group_by(activity, subject) %>%
    summarise_all(mean)