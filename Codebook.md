# Label and Feature description
  
Each record (observation) of the dataset has 2 labels and 66 features.  
  
The two **labels** per observation are:  

| label      | remark
|------------|---------------------------------------------
| activity   | 6 values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
| subject    | subject id: 1..30

The **features** were derived from the original dataset by selecting features 
representing mean and standard deviation values and computing averages 
per activity and subject:  

* '-mean'     Average of original feature mean value  
* '-std'      Average of original feature standard deviation value  
  
  
| feature                   | remark
|---------------------------|---------------------------------------
| tBodyAcc-mean-X           | body acceleration vector
| tBodyAcc-mean-Y           |
| tBodyAcc-mean-Z           |
| tBodyAcc-std-X            |
| tBodyAcc-std-Y            |
| tBodyAcc-std-Z            |
|                           |
| tGravityAcc-mean-X        | gravity acceleration vector
| tGravityAcc-mean-Y        |
| tGravityAcc-mean-Z        |
| tGravityAcc-std-X         |
| tGravityAcc-std-Y         |
| tGravityAcc-std-Z         |
|                           |
| tBodyAccJerk-mean-X       | body jerk vector
| tBodyAccJerk-mean-Y       |
| tBodyAccJerk-mean-Z       |
| tBodyAccJerk-std-X        |
| tBodyAccJerk-std-Y        |
| tBodyAccJerk-std-Z        |
|                           |
| tBodyGyro-mean-X          | body angular velocity vector
| tBodyGyro-mean-Y          |
| tBodyGyro-mean-Z          |
| tBodyGyro-std-X           |
| tBodyGyro-std-Y           |
| tBodyGyro-std-Z           |
|                           |
| tBodyGyroJerk-mean-X      | body angular acceleration vector
| tBodyGyroJerk-mean-Y      |
| tBodyGyroJerk-mean-Z      |
| tBodyGyroJerk-std-X       |
| tBodyGyroJerk-std-Y       |
| tBodyGyroJerk-std-Z       |
|                           |
| tBodyAccMag-mean          | body acceleration magnitude
| tBodyAccMag-std           |
|                           |
| tGravityAccMag-mean       | gravity acceleration magnitude
| tGravityAccMag-std        |
|                           |
| tBodyAccJerkMag-mean      | body jerk magnitude
| tBodyAccJerkMag-std       |
|                           |
| tBodyGyroMag-mean         | body angular velocity magnitude
| tBodyGyroMag-std          |
|                           |
| tBodyGyroJerkMag-mean     | body angular acceleration magnitude
| tBodyGyroJerkMag-std      |
|                           |
| fBodyAcc-mean-X           | FFT of body acceleration
| fBodyAcc-mean-Y           |
| fBodyAcc-mean-Z           |
| fBodyAcc-std-X            |
| fBodyAcc-std-Y            |
| fBodyAcc-std-Z            |
|                           |
| fBodyAccJerk-mean-X       | FFT of body jerk
| fBodyAccJerk-mean-Y       |
| fBodyAccJerk-mean-Z       |
| fBodyAccJerk-std-X        |
| fBodyAccJerk-std-Y        |
| fBodyAccJerk-std-Z        |
|                           |
| fBodyGyro-mean-X          | FFT of body angular velocity
| fBodyGyro-mean-Y          |
| fBodyGyro-mean-Z          |
| fBodyGyro-std-X           |
| fBodyGyro-std-Y           |
| fBodyGyro-std-Z           |
|                           |
| fBodyAccMag-mean          | FFT of body acceleration magnitude
| fBodyAccMag-std           |
|                           |
| fBodyBodyAccJerkMag-mean  | FFT of body jerk magnitude
| fBodyBodyAccJerkMag-std   |
|                           |
| fBodyBodyGyroMag-mean     | FFT of angular velocity magnitude
| fBodyBodyGyroMag-std      |
|                           |
| fBodyBodyGyroJerkMag-mean | FFT of angular acceleration magnitude
| fBodyBodyGyroJerkMag-std  |

  
## Additional Notes
The original features come from the accelerometer and gyroscope 3-axial raw signals 
tAcc-XYZ and tGyro-XYZ.  
These time domain signals (prefix 't' to denote time) were captured at a constant 
rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass 
Butterworth filter with a corner frequency of 20 Hz to remove noise.  
  
Similarly, the acceleration signal was then separated into body and 
gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz.  
  
Subsequently, the body linear acceleration and angular velocity were derived 
in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using 
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag).   
  
Also a Fast Fourier Transform (FFT) was applied to some of these signals 
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag.  
(Note the 'f' to indicate frequency domain signals).  
  
These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
