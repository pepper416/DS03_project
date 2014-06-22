## Code Book for this project
========
### Data Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

==========
### Variable Description

The tidy data includes the following variables:

 [1] __"subject"__: number 1-30 identifying the volunteers performing the experiment
 
 [2] __"activity"__: one of 6 physical activities (walking, walking upstairs, walking downstairs, sitting, standing, laying). These are defined in the 'activity_labels.txt' file provided.

Averages of the following metrics, with the following naming rules: 

 * __begins with 't'__ <-> Time Domain signals 
 * __begins with 'f'__ <-> Frequency Domain signals 

 * __Acc__ <-> Acceleration signals 
 * __Gyro__ <-> Gyroscope signals 

 * __Body__ <-> Body signals 
 * __Gravity__ <-> gravity signals 

 * __Jerk__ <-> Jerk signals 
 * __Mag__ <-> magnitude of signals by Euclidean Norm 

 * __mean__ <-> Mean
 * __std__ <-> Standard Deviation

 * __X__ <-> the axis of the measurement is X axis
 * __Y__ <-> the axis of the measurement is Y axis
 * __Z__ <-> the axis of the measurement is Z axis
 
![alt text](https://dl.dropboxusercontent.com/u/19473492/p1.png "variable names")
  
=========
### Clean data steps:

0. step0: download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip file to the work directory.

1. Step1: merges the training and the test sets to create one data set.
* Use __cbind()__ to combine subject data, activity data (y), and measurement data (X) from both the test datasets and training datasets. 
* Use __rbind()__ to combine test data and training data. 
* add feature name from "feature.txt" file

2. Step2: Extracts only the measurements on the mean and standard deviation for each measurement. 
* use __grep()__ function to select the colunms that only contains mean() and std(). Note: the meanFreq() is not included in my list.

3. Step3: Uses descriptive activity names to name the activities in the data set.
* the labels for the six activities can be found from "activity_labels.txt". The "_" between words in label column was removed.

4. Step4: Appropriately labels the data set with descriptive variable names. 
* the column names should not include "-" or "()", because R interprets the "-" as an operator, "()" as a function call. Therefore, change the dash "-" to underline "_" and remove the "()" in the variable names.
* this could be done by __sub()__ function.

5. Step5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
* use __aggregate()__ to get the average of the 66 variables by subjects and activities. The second tidy data contains 180 rows (= 30 subjects * 6 activities) and 68 columns (="Subject" + "Activity" + 66 summary variables). 








