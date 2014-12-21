The data set represents average data based on collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description is available at the site where the data was obtained:   
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

###Experimental design and background  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)  
wearing a smartphone (Samsung Galaxy S II) on the waist. 

###Raw data
Using its embedded accelerometer and gyroscope, were captured 3-axial linear acceleration and 3-axial angular velocity  
at a constant rate of 50Hz.The obtained dataset has been randomly partitioned into two sets,  
where 70% of the volunteers was selected for generating the training data and 30% the test data.    
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled  
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).  
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth  
low-pass filter into body acceleration and gravity.  
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff  
frequency was used. From each window, a vector of features was obtained by calculating variables from the time and  
frequency domain.  

###Variables  
- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. There are time domain signals (prefix 't' to denote time).  
- The acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 
- The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).  
- Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).   
- These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Processed data
Training and test data were merged to one dataset. Then only mean and standard deviation measurments were taken.  
And finaly average values for each measurment for each activity and subject were calculated.  

So this is a data set with 180 cases (rows) and 68 variables (columns).  
We have data on 30 volunteers and 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, laying).  
Columns contain following information:  
* subject - contains the unique id of particular volunteer  
* activity - contains the activity name done by particular subject_id  
* 66 of rest columns are named by done measurments and contain average values for each subject and activity measurment.

###Source
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.   
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.  
activityrecognition '@' smartlab.ws  
www.smartlab.ws 
