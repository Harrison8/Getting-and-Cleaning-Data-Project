# CodeBook

This document describes the following components of this project:
* **Data** used in this project
* **Transformations** applied to the data
* **Variables** in the final output file

This information is adapted from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
___
## Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Transformations
#### Applied by the research team:
The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:

#### Applied in R Studio: 
The data set was originally divided into two groups, the training group and the test group. For each group, the subjects and activities performed were appended to the vector of features. Then, the two datasets were merged. The features were labelled according to the titles in the "features.txt" file.

A subset of the data was created which contained only observations of the mean and standard deviation of variables (while retaining the subject and activity identifiers).

The numeric activity values were replaced with descriptive text based on the "activity_labels.txt" file.

Punctuation and capitalization was removed from all variable names.

Lastly, a new data set was created by calculating the mean for each combination of subject and activity.

## Variables
The final data set contains the average of the mean and standard deviation for each acitivity and subject for the following variables, each of which is a combination of several components: 
* The prefix "t" is used to denote time domain signals, and "f" indicates fequency domain signals.
* "Body" indicates acceleration of the body while "gravity" indicates acceleration due to gravity.
* "Acc" indicates the measurement is from the accelerometer while "Gyro" indicates that is is from the gyroscope.
* "Jerk" indicates the jerk signal, while "Mag" indicates the magnitude of the three signals.
* '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

#### A short lit of the original variable names:
tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag

#### Full variable list and descriptions:
* activity: activity type
* subject: subject number
* tbodyaccmeanx: time domain body acceleration measured by accelerometer - mean along the x axis
* tbodyaccmeany: time domain body acceleration measured by accelerometer - mean along the y axis 
* tbodyaccmeanz: time domain body acceleration measured by accelerometer - mean along the z axis 
* tbodyaccstdx: time domain body acceleration measured by accelerometer - standard deviation along the x axis
* tbodyaccstdy: time domain body acceleration measured by accelerometer - standard deviation along the y axis 
* tbodyaccstdz: time domain body acceleration measured by accelerometer - standard deviation along the z axis 
* tgravityaccmeanx: time domain gravity acceleration measured by accelerometer - mean along the x axis
* tgravityaccmeany: time domain gravity acceleration measured by accelerometer - mean along the y axis 
* tgravityaccmeanz: time domain gravity acceleration measured by accelerometer - mean along the z axis 
* tgravityaccstdx: time domain gravity acceleration measured by accelerometer - standard deviation along the x axis
* tgravityaccstdy: time domain gravity acceleration measured by accelerometer - standard deviation along the y axis 
* tgravityaccstdz: time domain gravity acceleration measured by accelerometer - standard deviation along the z axis 
* tbodyaccjerkmeanx: time domain body acceleration measured by accelerometer jerk signal - mean along the x axis
* tbodyaccjerkmeany: time domain body acceleration measured by accelerometer jerk signal - mean along the y axis 
* tbodyaccjerkmeanz: time domain body acceleration measured by accelerometer jerk signal - mean along the z axis 
* tbodyaccjerkstdx: time domain body acceleration measured by accelerometer jerk signal - standard deviation along the x axis
* tbodyaccjerkstdy: time domain body acceleration measured by accelerometer jerk signal - standard deviation along the y axis 
* tbodyaccjerkstdz: time domain body acceleration measured by accelerometer jerk signal - standard deviation along the z axis 
* tbodygyromeanx: time domain body acceleration measured by gyroscope - mean along the x axis
* tbodygyromeany: time domain body acceleration measured by gyroscope - mean along the y axis 
* tbodygyromeanz: time domain body acceleration measured by gyroscope - mean along the z axis 
* tbodygyrostdx: time domain body acceleration measured by gyroscope - standard deviation along the x axis
* tbodygyrostdy: time domain body acceleration measured by gyroscope - standard deviation along the y axis 
* tbodygyrostdz: time domain body acceleration measured by gyroscope - standard deviation along the z axis 
* tbodygyrojerkmeanx: time domain body acceleration measured by gyroscope jerk signal - mean along the x axis
* tbodygyrojerkmeany: time domain body acceleration measured by gyroscope jerk signal - mean along the y axis 
* tbodygyrojerkmeanz: time domain body acceleration measured by gyroscope jerk signal - mean along the z axis 
* tbodygyrojerkstdx: time domain body acceleration measured by gyroscope jerk signal - standard deviation along the x axis
* tbodygyrojerkstdy: time domain body acceleration measured by gyroscope jerk signal - standard deviation along the y axis 
* tbodygyrojerkstdz: time domain body acceleration measured by gyroscope jerk signal - standard deviation along the z axis 
* tbodyaccmagmean: time domain body acceleration measured by accelerometer magnitude - mean 
* tbodyaccmagstd: time domain body acceleration measured by accelerometer magnitude - standard deviation 
* tgravityaccmagmean: time domain gravity acceleration measured by accelerometer magnitude - mean 
* tgravityaccmagstd: time domain gravity acceleration measured by accelerometer magnitude - standard deviation 
* tbodyaccjerkmagmean: time domain body acceleration measured by accelerometer jerk signal magnitude - mean 
* tbodyaccjerkmagstd: time domain body acceleration measured by accelerometer jerk signal magnitude - standard deviation 
* tbodygyromagmean: time domain body acceleration measured by gyroscope magnitude - mean 
* tbodygyromagstd: time domain body acceleration measured by gyroscope magnitude - standard deviation 
* tbodygyrojerkmagmean: time domain body acceleration measured by gyroscope jerk signal magnitude - mean 
* tbodygyrojerkmagstd: time domain body acceleration measured by gyroscope jerk signal magnitude - standard deviation 
* fbodyaccmeanx: frequency domain body acceleration measured by accelerometer - mean along the x axis
* fbodyaccmeany: frequency domain body acceleration measured by accelerometer - mean along the y axis 
* fbodyaccmeanz: frequency domain body acceleration measured by accelerometer - mean along the z axis 
* fbodyaccstdx: frequency domain body acceleration measured by accelerometer - standard deviation along the x axis
* fbodyaccstdy: frequency domain body acceleration measured by accelerometer - standard deviation along the y axis 
* fbodyaccstdz: frequency domain body acceleration measured by accelerometer - standard deviation along the z axis 
* fbodyaccjerkmeanx: frequency domain body acceleration measured by accelerometer jerk signal - mean along the x axis
* fbodyaccjerkmeany: frequency domain body acceleration measured by accelerometer jerk signal - mean along the y axis 
* fbodyaccjerkmeanz: frequency domain body acceleration measured by accelerometer jerk signal - mean along the z axis 
* fbodyaccjerkstdx: frequency domain body acceleration measured by accelerometer jerk signal - standard deviation along the x axis
* fbodyaccjerkstdy: frequency domain body acceleration measured by accelerometer jerk signal - standard deviation along the y axis 
* fbodyaccjerkstdz: frequency domain body acceleration measured by accelerometer jerk signal - standard deviation along the z axis 
* fbodygyromeanx: frequency domain body acceleration measured by gyroscope - mean along the x axis
* fbodygyromeany: frequency domain body acceleration measured by gyroscope - mean along the y axis 
* fbodygyromeanz: frequency domain body acceleration measured by gyroscope - mean along the z axis 
* fbodygyrostdx: frequency domain body acceleration measured by gyroscope - standard deviation along the x axis
* fbodygyrostdy: frequency domain body acceleration measured by gyroscope - standard deviation along the y axis 
* fbodygyrostdz: frequency domain body acceleration measured by gyroscope - standard deviation along the z axis 
* fbodyaccmagmean: frequency domain body acceleration measured by accelerometer magnitude - mean 
* fbodyaccmagstd: frequency domain body acceleration measured by accelerometer magnitude - standard deviation 
* fbodybodyaccjerkmagmean: frequency domain body acceleration body acceleration measured by accelerometer jerk signal magnitude - mean 
* fbodybodyaccjerkmagstd: frequency domain body acceleration body acceleration measured by accelerometer jerk signal magnitude - standard deviation 
* fbodybodygyromagmean: frequency domain body acceleration body acceleration measured by gyroscope magnitude - mean 
* fbodybodygyromagstd: frequency domain body acceleration body acceleration measured by gyroscope magnitude - standard deviation 
* fbodybodygyrojerkmagmean: frequency domain body acceleration body acceleration measured by gyroscope jerk signal magnitude - mean 
* fbodybodygyrojerkmagstd: frequency domain body acceleration body acceleration measured by gyroscope jerk signal magnitude - standard deviation
