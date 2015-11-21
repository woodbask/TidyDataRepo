					DATA DICTIONARY 
		Course Project for Getting and Cleaning Data – Tidy file Output
		---------------------------------------------------------------

NOTE: This file discusses only the variables in the tidy output file. For references to source variables, please see /data/README_Source  and /data/features_info files. The abbreviations/notations in variable names are provided at the end of this file.

subjectId [Integer]	2 	
	The unique identifier for each subject who carried out the experiment
		1...30 – Each subject is assigned a unique number from 1 to 30.

activityId [Integer]	1
	The unique identifier for each activity in activityDesc performed by the subjects
		1...6 – Total of 6 possible activities

activityDesc [char]	19
	Description of activities corresponding to each activity in activityId as follows:
1	WALKING
2	WALKING_UPSTAIRS
3	WALKING_DOWNSTAIRS
4	SITTING
5	STANDING
6	LAYING

avg_tBodyAccMeanXaxis [Numeric]  	10
	Average of source variable tBodyAcc-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999

avg_tBodyAccMeanYaxis [Numeric]  	10
	Average of source variable tBodyAcc-mean()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999

avg_tBodyAccMeanZaxis [Numeric]  	10
	Average of source variable tBodyAcc-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999

avg_tBodyAccStdXaxis	[Numeric]  	10
	Average of source variable tBodyAcc-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999

avg_tBodyAccStdYaxis [Numeric]  	10
	Average of source variable tBodyAcc-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999
	
avg_tBodyAccStdZaxis [Numeric]  	10
	Average of source variable tBodyAcc-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999
	
avg_tGravityAccMeanXaxis [Numeric]  	10
	Average of source variable tGravityAcc-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999

avg_tGravityAccMean-Yaxis [Numeric]  	10
	Average of source variable tGravityAcc-mean()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999 	

avg_tGravityAccMeanZaxis [Numeric]  	10
	Average of source variable tGravityAcc-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
avg_tGravityAccStdXaxis [Numeric]  	10
	Average of source variable tGravityAcc-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tGravityAccStdYaxis [Numeric]  	10
	Average of source variable tGravityAcc-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tGravityAccStdZaxis [Numeric]  	10
	Average of source variable tGravityAcc-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyAccJerkMeanXaxis [Numeric]  	10
	Average of source variable tBodyAccJerk-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyAccJerkMeanYaxis [Numeric]  	10
	Average of source variable tBodyAccJerk-mean()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyAccJerkMeanZaxis [Numeric]  	10
	Average of source variable tBodyAccJerk-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyAccJerkStdXaxis [Numeric]  	10
	Average of source variable tBodyAccJerk-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyAccJerkStdYaxis [Numeric]  	10
	Average of source variable tBodyAccJerk-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyAccJerkStdZaxis [Numeric]  	10
	Average of source variable tBodyAccJerk-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroMeanXaxis [Numeric]  	10
	Average of source variable tBodyGyro-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroMeanYaxis [Numeric]  	10
	Average of source variable tBodyGyro-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroMeanZaxis [Numeric]  	10
	Average of source variable tBodyGyro-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyGyroStdXaxis [Numeric]  	10
	Average of source variable tBodyGyro-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroStdYaxis [Numeric]  	10
	Average of source variable tBodyGyro-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroStdZaxis [Numeric]  	10
	Average of source variable tBodyGyro-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroJerkMeanXaxis	[Numeric]  	10
	Average of source variable tBodyGyroJerk-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyGyroJerkMeanYaxis	[Numeric]  	10
	Average of source variable tBodyGyroJerk-mean()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyGyroJerkMeanZaxis [Numeric]  	10
	Average of source variable tBodyGyroJerk-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroJerkStdXaxis [Numeric]  	10
	Average of source variable tBodyGyroJerk-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroJerkStdYaxis [Numeric]  	10
	Average of source variable tBodyGyroJerk-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroJerkStdZaxis [Numeric]  	10
	Average of source variable tBodyGyroJerk-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyAccMagMean [Numeric]  	10
	Average of source variable tBodyAccMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyAccMagStd [Numeric]  	10
	Average of source variable tBodyAccMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tGravityAccMagMean [Numeric]  	10
	Average of source variable tGravityAccMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tGravityAccMagStd [Numeric]  	10
	Average of source variable tGravityAccMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyAccJerkMagMean [Numeric]  	10
	Average of source variable tBodyAccJerkMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_tBodyAccJerkMagStd [Numeric]  	10
	Average of source variable tBodyAccJerkMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroMagMean [Numeric]  	10
	Average of source variable tBodyGyroMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroMagStd	[Numeric]  	10
	Average of source variable tBodyGyroMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	


avg_tBodyGyroJerkMagMean [Numeric]  	10
	Average of source variable tBodyGyroJerkMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_tBodyGyroJerkMagStd [Numeric]  	10
	Average of source variable tBodyGyroJerkMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccMeanXaxis [Numeric]  	10
	Average of source variable fBodyAcc-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccMeanYaxis [Numeric]  	10
	Average of source variable fBodyAcc-mean()-Yfor each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccMeanZaxis [Numeric]  	10
	Average of source variable fBodyAcc-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccStdXaxis [Numeric]  	10
	Average of source variable fBodyAcc-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_fBodyAccStdYaxis	[Numeric]  	10
	Average of source variable fBodyAcc-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_fBodyAccStdZaxis	[Numeric]  	10
	Average of source variable fBodyAcc-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

avg_fBodyAccJerkMeanXaxis [Numeric]  	10
	Average of source variable fBodyAccJerk-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccJerkMeanYaxis [Numeric]  	10
	Average of source variable fBodyAccJerk-mean()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccJerkMeanZaxis [Numeric]  	10
	Average of source variable fBodyAccJerk-mean()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccJerkStdXaxis [Numeric]  	10
	Average of source variable fBodyAccJerk-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccJerkStdYaxis [Numeric]  	10
	Average of source variable fBodyAccJerk-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccJerkStdZaxis [Numeric]  	10
	Average of source variable fBodyAccJerk-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyGyroMeanXaxis [Numeric]  	10
	Average of source variable fBodyGyro-mean()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyGyroMeanYaxis [Numeric]  	10
	Average of source variable fBodyGyro-mean()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyGyroMeanZaxis [Numeric]  	10
	Average of source variable fBodyGyro-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyGyroStdXaxis [Numeric]  	10
	Average of source variable fBodyGyro-std()-X for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyGyroStdYaxis [Numeric]  	10
	Average of source variable fBodyGyro-std()-Y for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyGyroStdZaxis [Numeric]  	10
	Average of source variable fBodyGyro-std()-Z for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccMagMean [Numeric]  	10
	Average of source variable fBodyAccMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyAccMagStd [Numeric]  	10
	Average of source variable fBodyAccMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyBodyAccJerkMagMean [Numeric]  	10
	Average of source variable fBodyBodyAccJerkMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyBodyAccJerkMagStd [Numeric]  	10
	Average of source variable fBodyBodyAccJerkMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyBodyGyroMagMean [Numeric]  	10
	Average of source variable fBodyBodyGyroMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyBodyGyroMagStd [Numeric]  	10
	Average of source variable fBodyBodyGyroMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyBodyGyroJerkMagMean [Numeric]  	10
	Average of source variable fBodyBodyGyroJerkMag-mean() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	
	
avg_fBodyBodyGyroJerkMagStd [Numeric]  	10
	Average of source variable fBodyBodyGyroJerkMag-std() for each activity and subject.
	Units for this variable are same as the corresponding source variable.
	+/- 0.000000000....0.999999999	

	
NOTATIONS in variable names:
The following notations are used in variable names:
‘Acc’ – indicates accelerator component
‘Body’ – indicates body motion component
‘f’ – indicated fast fourier transform application to signals
‘Gravity – indicates gravity related component
‘Gyro’ – indicates gyroscope component
‘Jerk’ – indicates Jerk component
‘Mad’ – indicates median absolute deviation
 ‘Mag’ – magnitude of the signal
‘mean’ – indicates mean value
‘std’ – indicates standard deviation
‘t’ – indicates time domain

