# Creation of tidy data set

Source data:  
Human Activity Recognition Using Smartphones Dataset  
  
The creation of the tidy data set requires following files:  

Files in working directory  

* 'features.txt' 		List of all features.
* 'activity_labels.txt' Links the class labels with their activity name.

Files in subdirectory 'train/'  

* 'train/X_train.txt' 		Training set.
* 'train/y_train.txt' 		Training labels.
* 'train/subject_train.txt' Subject who performed the activity. 
							
Files in subdirectory 'test/'  

* 'test/X_test.txt' 		Test set.
* 'test/y_test.txt' 		Test labels.
* 'train/subject_train.txt' Subject who performed the activity. 

The tidy data set is created by R script **'run_analysis.R'** 
and delivers a file **'tidy_data.txt'**

Information about the resulting dataset is described in the attached **Codebook**.