==================================================================
Getting and Cleaning Data Course - Course Project
==================================================================


A. Directory structure - which files to expect where and what do they mean
=======================================================================================================================================================
The root folder for this project contains the following files with the explanation about the files:

- 'README.md': this is the file which you are reading at the moment. This file will provide information on Directory structure and file information.
This file will also explain how to run the script for this assignment along with a summary and outline of the processing steps as per the assignment instructions.
This file is on the root project folder.

- 'data/README_Source.md': This is the original README file that came along with the source data for the assignment. To get a background on the source data and the
purpose of collecting this data, please review this file. 

- 'data/features_info': This is the original features information file that came along with the source data for the assignment. To get a background on the 
source data and the purpose of collecting this data, please review this file along with the /data/README_Source.md file

- 'Codebook.md': This file provides the data dictionary for the final 'tidy.txt' data file. You need to be familiar with the background of the source data
from the 'data/README_Source.md' file in order to understand the context of the data.

- 'run_analysis.R': This is the file that contains the script for the assignment to generate the tidy data text file. Details of this file on how the script works
is provided in the section below of this document.

NOTE: The following files must be in the folders as specified below with respect to the root or main folder. These are source files that were provided with the 
source data. Please refer to the '/data/README_Source.md' and '/data/features_info' files for explanation of these following files:
- 'data/features_info.txt': 

- 'data/features.txt': 

- 'data/activity_labels.txt': 

- 'data/train/X_train.txt': 

- 'data/train/y_train.txt': 

- 'data/test/X_test.txt': 

- 'data/test/y_test.txt': 

- 'data/train/subject_train.txt': 

- 'data/train/Inertial Signals/total_acc_x_train.txt': 

- 'data/train/Inertial Signals/body_acc_x_train.txt':

- 'data/train/Inertial Signals/body_gyro_x_train.txt':

NOTE: The working directory is assumed to be set to '/data/' as per the instructions. The


B. Explanation of how run_analysis.R works
===============================================================================================================================================================
NOTE: The working directory is assumed to be set to '/data/' as per the instructions. The run_analysis.R file makes this assumption to look up source data files
and output the tidy text file. The tidy file is written in the directory one level up from the working directory. The steps below outlines how the file works.
For more details on code, please refer to the file itself.

Libraries inclusion
===================
The only library included is sqldf. 


STEP 1 of Instruction: Merging the Test and Train datasets to create one dataset
================================================================================
This is accomplished in four substeps as follows:
a) First, the script reads the three files subject_test, X_test, and y_test in R using read.table and combines into one data set using cbind.
b) Second, the script reads the three files subject_train, X_train, and y_train in R using read.table and combines into one data set using cbind.
c) Third, the script reads the feature labels from the features file and appends two additional labels for activity identifier and subject. The purpose of this is 
to create the column headers of the merged data set. The sequence of this dataset is such that it aligns with the sequence of the columns from steps a,b above.
d) Next the two datasets from steps a,b above are merged by rbind. This is followed by creating column headers of the merged dataset by using the names()
function on the dataset from step c above. 


STEP 2 of Instruction: Extracts only Mean and Standard Deviation measurements
=============================================================================
The mean and std columns positions are identified from the 'features' file.
The position numbers are added to 2, since activity and subject columns have been added to the dataframe in the previous step.
Only columns ending with mean and std are considered and NOT mean frequency or mean gravity. 33 columns are found each for mean and std.
The data for these columns in addition to the activity identifier and subject are extracted and stored in another dataset using the column indexes.

STEP 3 of Instruction: Use descriptive activity name in the dataset
===================================================================
To accomplish this, the activity labels file is read in R and a column name of activityId and activityDesc is given using the names() function.
Next, the merge() function is called to update the extracted dataset in STEP 2 with the activityDesc column, matching the activityId in both datasets.
The activityId column is not dropped from this dataset as there is no need to do so at this point. The activityDesc column is however positioned next to
activityId column for better readability and organization of the data.

STEP 4 of Instruction: Appropriately labeling the dataset with descriptive variable names
=========================================================================================
The column labels are not too bad and they are also quite long. Besides, the data dictionary should explain the columns, keeping in mind the changes that were
made was to remove the special characters '()' and spaces. The axes were also changed to use the word axis at the end to make it more descriptive.
To do this, first names() function was used to get the names of columns and then gsub() function was used to make the changes as above. 
As an example the column name 'fBodyAcc-mean()-X
' was changed to 'fBodyAcc-Mean-X
axis'. Similar notation was maintained for other mean and std columns.
Next, the column name changes were applied using the names() function back to the dataset.

STEP 5 of Instruction: Creating tidy dataset with average of each column by activity and subject
================================================================================================
To do this, sqldf() function was used to execute a query on the dataset from previous step to return subject, activityDesc, and the remaining 66 mean and std
columns. The 66 columns were averaged using the avg() in the select query and using group by clause on subject and activity.
Since the avg() is labeled in the column name of the resultant dataset, the column names are cleaned up next using gsub(), with 'avg_' preceeding each column name.
As an example, the column name 'fBodyAcc-Mean-X
axis' from the previous dataset is now labeled 'avg_fBodyAcc-Mean-X
axis'.
This dataset satisfies the tidy criteria because:
a) Each of the 68 variables are in their own columns. No column has more than one variable combined.
b) Each different observation of the variable is in a different row. Each row of data is unique to the subject and activity.
c) This is one dataset and therefore none of the variables appears in any other dataset or table.
d) This is the only dataset at this point, and therefore there is no question of any variables to have links in another dataset. 
In addition, the column names are descriptive and meaningful (subjective to author's interpretation. Data Dictionary file explains further on naming convention).
Since this cleaned dataset satisfies the tidy dataset conditions, it was written to a a file 'tidy.txt' using write.table().

C. Executing run_analysis.R
=========================================================================================================================================================
The working directory is assumed to be "/data/". The file should be located one directory level above the working directoy which is the main directory.
The file can be opened in R and code can be executed from top to bottom in sequence.

D. Viewing the output of run_analysis.R
==========================================================================================================================================================

E. Execution Output
=========================================================================================================================================================
Upon exeution of run_analysis.R, an output file called tidy.txt is created in the same folder as run_analysis.R.
The contents of this file can be viewed in R by running the following commands in sequence:
- > setwd("../")
- > data <- read.table("tidy.txt", header = TRUE)
- > View(data)