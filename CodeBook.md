## Code Book for this project
========
### Data Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

==========
### Variable Description

The tidy data includes the following variables:


  1. __bold Subject__: number 1-30 identifying the volunteers performing the experiment

  2. ctivity: one of 6 physical activities (walking, walking upstairs, walking downstairs, sitting, standing, laying). These are defined in the 'activity_labels.txt' file provided.

3) averages of the following metrics (list does not include XYZ axes, which may be indicated on the column names to identify the axis of the measurement):

tBodyAcc-mean()

tBodyAcc-std()

tGravityAcc-mean()

tGravityAcc-std()

tBodyAccJerk-mean()

tBodyAccJerk-std()

tBodyGyro-mean()

tBodyGyro-std()

tBodyGyroJerk-mean()

tBodyGyroJerk-std()

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()

fBodyAcc-std()

fBodyAccJerk-mean()

fBodyAccJerk-std()

fBodyGyro-mean()

fBodyGyro-std()

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()

Each feature was normalized and bounded between -1,1, therefore, there are no units for all measurements listed above.
