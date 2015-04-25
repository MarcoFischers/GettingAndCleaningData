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

* '.mean'    Average of original feature mean value  
* '.avgd'    Average of original feature standard deviation value  
  
  
| feature                   | remark
|---------------------------|---------------------------------------
| tBodyAcc.mean.X           | body acceleration vector
| tBodyAcc.mean.Y           |
| tBodyAcc.mean.Z           |
| tBodyAcc.avgd.X           |
| tBodyAcc.avgd.Y           |
| tBodyAcc.avgd.Z           |
|                           |
| tGravityAcc.mean.X        | gravity acceleration vector
| tGravityAcc.mean.Y        |
| tGravityAcc.mean.Z        |
| tGravityAcc.avgd.X        |
| tGravityAcc.avgd.Y        |
| tGravityAcc.avgd.Z        |
|                           |
| tBodyAccJerk.mean.X       | body jerk vector
| tBodyAccJerk.mean.Y       |
| tBodyAccJerk.mean.Z       |
| tBodyAccJerk.avgd.X       |
| tBodyAccJerk.avgd.Y       |
| tBodyAccJerk.avgd.Z       |
|                           |
| tBodyGyro.mean.X          | body angular velocity vector
| tBodyGyro.mean.Y          |
| tBodyGyro.mean.Z          |
| tBodyGyro.avgd.X          |
| tBodyGyro.avgd.Y          |
| tBodyGyro.avgd.Z          |
|                           |
| tBodyGyroJerk.mean.X      | body angular acceleration vector
| tBodyGyroJerk.mean.Y      |
| tBodyGyroJerk.mean.Z      |
| tBodyGyroJerk.avgd.X      |
| tBodyGyroJerk.avgd.Y      |
| tBodyGyroJerk.avgd.Z      |
|                           |
| tBodyAccMag.mean          | body acceleration magnitude
| tBodyAccMag.avgd          |
|                           |
| tGravityAccMag.mean       | gravity acceleration magnitude
| tGravityAccMag.avgd       |
|                           |
| tBodyAccJerkMag.mean      | body jerk magnitude
| tBodyAccJerkMag.avgd      |
|                           |
| tBodyGyroMag.mean         | body angular velocity magnitude
| tBodyGyroMag.avgd         |
|                           |
| tBodyGyroJerkMag.mean     | body angular acceleration magnitude
| tBodyGyroJerkMag.avgd     |
|                           |
| fBodyAcc.mean.X           | FFT of body acceleration
| fBodyAcc.mean.Y           |
| fBodyAcc.mean.Z           |
| fBodyAcc.avgd.X           |
| fBodyAcc.avgd.Y           |
| fBodyAcc.avgd.Z           |
|                           |
| fBodyAccJerk.mean.X       | FFT of body jerk
| fBodyAccJerk.mean.Y       |
| fBodyAccJerk.mean.Z       |
| fBodyAccJerk.avgd.X       |
| fBodyAccJerk.avgd.Y       |
| fBodyAccJerk.avgd.Z       |
|                           |
| fBodyGyro.mean.X          | FFT of body angular velocity
| fBodyGyro.mean.Y          |
| fBodyGyro.mean.Z          |
| fBodyGyro.avgd.X          |
| fBodyGyro.avgd.Y          |
| fBodyGyro.avgd.Z          |
|                           |
| fBodyAccMag.mean          | FFT of body acceleration magnitude
| fBodyAccMag.avgd          |
|                           |
| fBodyBodyAccJerkMag.mean  | FFT of body jerk magnitude
| fBodyBodyAccJerkMag.avgd  |
|                           |
| fBodyBodyGyroMag.mean     | FFT of angular velocity magnitude
| fBodyBodyGyroMag.avgd     |
|                           |
| fBodyBodyGyroJerkMag.mean | FFT of angular acceleration magnitude
| fBodyBodyGyroJerkMag.avgd |

  
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
