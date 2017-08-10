# Getting-and-Cleaning-Data-Project
This file was created as part of the Getting and Cleaning Data course on Coursera in August 2017.

This repo contains several files:
1. run_analysis.R is the script which performs the function of this project.
2. data.zip contains the data necessary for this project (though this can also be downloaded by the R script).
3. output.txt is the result of running this program.
4. CodeBook.md describes the data, transformations, and final variables in this project.

---
### run_analysis.R functionality

This section describes how the script performs the following steps:

**1. Merges the training and the test sets to create one data set.**  
Downloads the file from the internet if "data.zip" does not exist in the current working directory and unzips the file. Reads and combines the data, subjects, and activity files for the "test" group and then the "training" group. Combines the test and training datasets by rows.

**2. Extracts only the measurements on the mean and standard deviation for each measurement.**
Reads the variable names in from the "features.txt" file. Applies vthe names "activity" and "subject" to the first two columns, then applies the feature names to the remaining columns of observed variables. Extracts the "activity" column, "subject" column, and every column whose name contains "mean()" or "std()" using grepl.

**3. Uses descriptive activity names to name the activities in the data set.**
Reads the list of activities from activity_labels.txt. Uses a for loop to create a character vector of activity names corresponding to the values in the activity column of the main dataset. Replaces the numeric values of avtivity with the descriptive character values.

**4. Appropriately labels the data set with descriptive variable names.**
Converts every column name to only lowercase letters and removes the punctuation marks.

**5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**
Loads the dplyr library and creates a new dataframe called "averages." Groups the main dataset by activity and subject, then finds the mean of each combination. Writes the output to a table.
