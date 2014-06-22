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
 
![Alt text](C:/Users/jdong/Desktop/DataScience/03_clean_data/Capture.PNG) 

 [1] "fBodyAcc_mean_X"           "fBodyAcc_mean_Y"           "fBodyAcc_mean_Z"           "fBodyAcc_std_X"           
 [5] "fBodyAcc_std_Y"            "fBodyAcc_std_Z"            "fBodyAccJerk_mean_X"       "fBodyAccJerk_mean_Y"      
 [9] "fBodyAccJerk_mean_Z"       "fBodyAccJerk_std_X"        "fBodyAccJerk_std_Y"        "fBodyAccJerk_std_Z"       
[13] "fBodyAccMag_mean"          "fBodyAccMag_std"           "fBodyBodyAccJerkMag_mean"  "fBodyBodyAccJerkMag_std"  
[17] "fBodyBodyGyroJerkMag_mean" "fBodyBodyGyroJerkMag_std"  "fBodyBodyGyroMag_mean"     "fBodyBodyGyroMag_std"     
[21] "fBodyGyro_mean_X"          "fBodyGyro_mean_Y"          "fBodyGyro_mean_Z"          "fBodyGyro_std_X"          
[25] "fBodyGyro_std_Y"           "fBodyGyro_std_Z"           "tBodyAcc_mean_X"           "tBodyAcc_mean_Y"          
[29] "tBodyAcc_mean_Z"           "tBodyAcc_std_X"            "tBodyAcc_std_Y"            "tBodyAcc_std_Z"           
[33] "tBodyAccJerk_mean_X"       "tBodyAccJerk_mean_Y"       "tBodyAccJerk_mean_Z"       "tBodyAccJerk_std_X"       
[37] "tBodyAccJerk_std_Y"        "tBodyAccJerk_std_Z"        "tBodyAccJerkMag_mean"      "tBodyAccJerkMag_std"      
[41] "tBodyAccMag_mean"          "tBodyAccMag_std"           "tBodyGyro_mean_X"          "tBodyGyro_mean_Y"         
[45] "tBodyGyro_mean_Z"          "tBodyGyro_std_X"           "tBodyGyro_std_Y"           "tBodyGyro_std_Z"          
[49] "tBodyGyroJerk_mean_X"      "tBodyGyroJerk_mean_Y"      "tBodyGyroJerk_mean_Z"      "tBodyGyroJerk_std_X"      
[53] "tBodyGyroJerk_std_Y"       "tBodyGyroJerk_std_Z"       "tBodyGyroJerkMag_mean"     "tBodyGyroJerkMag_std"     
[57] "tBodyGyroMag_mean"         "tBodyGyroMag_std"          "tGravityAcc_mean_X"        "tGravityAcc_mean_Y"       
[61] "tGravityAcc_mean_Z"        "tGravityAcc_std_X"         "tGravityAcc_std_Y"         "tGravityAcc_std_Z"        
[65] "tGravityAccMag_mean"       "tGravityAccMag_std"  

 [3] "fBodyAcc_mean_X"          
 [4] "fBodyAcc_mean_Y"          
 [5] "fBodyAcc_mean_Z"          
 [6] "fBodyAcc_std_X"           
 [7] "fBodyAcc_std_Y"           
 [8] "fBodyAcc_std_Z"           
 [9] "fBodyAccJerk_mean_X"      
[10] "fBodyAccJerk_mean_Y"      
[11] "fBodyAccJerk_mean_Z"      
[12] "fBodyAccJerk_std_X"       
[13] "fBodyAccJerk_std_Y"       
[14] "fBodyAccJerk_std_Z"       
[15] "fBodyAccMag_mean"         
[16] "fBodyAccMag_std"          
[17] "fBodyBodyAccJerkMag_mean" 
[18] "fBodyBodyAccJerkMag_std"  
[19] "fBodyBodyGyroJerkMag_mean"
[20] "fBodyBodyGyroJerkMag_std" 
[21] "fBodyBodyGyroMag_mean"    
[22] "fBodyBodyGyroMag_std"     
[23] "fBodyGyro_mean_X"         
[24] "fBodyGyro_mean_Y"         
[25] "fBodyGyro_mean_Z"         
[26] "fBodyGyro_std_X"          
[27] "fBodyGyro_std_Y"          
[28] "fBodyGyro_std_Z"          
[29] "tBodyAcc_mean_X"          
[30] "tBodyAcc_mean_Y"          
[31] "tBodyAcc_mean_Z"          
[32] "tBodyAcc_std_X"           
[33] "tBodyAcc_std_Y"           
[34] "tBodyAcc_std_Z"           
[35] "tBodyAccJerk_mean_X"      
[36] "tBodyAccJerk_mean_Y"      
[37] "tBodyAccJerk_mean_Z"      
[38] "tBodyAccJerk_std_X"       
[39] "tBodyAccJerk_std_Y"       
[40] "tBodyAccJerk_std_Z"       
[41] "tBodyAccJerkMag_mean"     
[42] "tBodyAccJerkMag_std"      
[43] "tBodyAccMag_mean"         
[44] "tBodyAccMag_std"          
[45] "tBodyGyro_mean_X"         
[46] "tBodyGyro_mean_Y"         
[47] "tBodyGyro_mean_Z"         
[48] "tBodyGyro_std_X"          
[49] "tBodyGyro_std_Y"          
[50] "tBodyGyro_std_Z"          
[51] "tBodyGyroJerk_mean_X"     
[52] "tBodyGyroJerk_mean_Y"     
[53] "tBodyGyroJerk_mean_Z"     
[54] "tBodyGyroJerk_std_X"      
[55] "tBodyGyroJerk_std_Y"      
[56] "tBodyGyroJerk_std_Z"      
[57] "tBodyGyroJerkMag_mean"    
[58] "tBodyGyroJerkMag_std"     
[59] "tBodyGyroMag_mean"        
[60] "tBodyGyroMag_std"         
[61] "tGravityAcc_mean_X"       
[62] "tGravityAcc_mean_Y"       
[63] "tGravityAcc_mean_Z"       
[64] "tGravityAcc_std_X"        
[65] "tGravityAcc_std_Y"        
[66] "tGravityAcc_std_Z"        
[67] "tGravityAccMag_mean"      
[68] "tGravityAccMag_std"  

Each feature was normalized and bounded between -1,1, therefore, there are no units for all measurements listed above.
