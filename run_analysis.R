library(sqldf)

# -------  STEP 1
# First... get the test data in R and merge for subject,activity label, 
# and remaining 561 data columns. Note that the working directory should be set
# to '/data' folder under the root or main directory where this file exists prior to this file
# execution. The working directory contains the test and train subdirectories for the
# test and train data where the source test and training data are expected to be. 
# The activity labels and features data files are also expected to be in the data directory.

testDir <- "./test/"
setwd(testDir)

fsTest <- read.table("subject_test.txt")
fxTest <- read.table("X_test.txt")
fyTest <- read.table("y_test.txt")

fTestAll <- cbind(fsTest,fyTest,fxTest)

# Second... get the train data in R and merge for subject,activity label, 
# and remaining 561 measurement data columns.
trainDir <- "../train/"
setwd(trainDir)

fsTrain <- read.table("subject_train.txt")
fxTrain <- read.table("X_train.txt")
fyTrain <- read.table("y_train.txt")

fTrainAll <- cbind(fsTrain,fyTrain,fxTrain)

# Third... label the column headers. Manually create the headers for 
# subject and activity label, but get the labels for remaining 561
# columns from the features file in R.
rootDir <- "../"
setwd(rootDir)

fFeat <- read.table("features.txt")

# just need the second column for header, remove the first column
fFeat2 <- fFeat[,2,drop=FALSE]
fFeatT <- t(fFeat2)

# append two column headers for subject and activity identifier  
# preceeding the 561 columns
fFeatT <- cbind("subjectId", "activityId", fFeatT)

# Fourth... bind the column header, test, and train data
fAll <- rbind(fTrainAll,fTestAll)
names(fAll) <- fFeatT[1,]

# at this point the data is all combined - time to check for any missing values
anyNA(fAll)

# from the above step, no missing values were found. No data cleansing needed
# so proceed to next step.

# -------- STEP 2
# Extracting only mean and std columns.
# NOTE: This will be stored in a separate dataframe from the previous step.
# The mean and std columns positions are identified from the 'features' file.
# The position numbers are added to 2, since activity and subject columns have
# been added to the dataframe in the previous step.
# Only columns ending with mean and std are considered and NOT mean frequency 
# or mean gravity. 33 columns are found each for mean and std.

fXtracted <- fAll[,c(1,2,3:8,43:48,83:88,123:128,163:168,203:204,216:217,
229:230,242:243,255:256,268:273,347:352,426:431,505:506,
518:519,531:532,544:545)]

# ------------ STEP 3
# read the activity labels file in R
fActlbl <- read.table("activity_labels.txt")
names(fActlbl) <- c("activityId", "activityDesc")

# update the extracted data with activity labels
fXtracted <- merge(fXtracted, fActlbl, by.x = "activityId", by.y = "activityId")

# for clarity and organization of the data, move the activity label
# column next to activity id and subject 
fXtracted <- fXtracted[,c(1:2,69,3:68)]

# ------------ STEP 4

# the column labels are not too bad. they are also quite long.
# I would just keep them with the hungarian notation, but strip of the
# special characters '()' and spaces. The XYZ axes are made a bit
# more descriptive by adding the word axis, such that X is Xaxis.

# get the column names and make the changes 
colnames <- names(fXtracted)
colnames <- gsub("[[:punct:]]", "", colnames)
colnames <- gsub("mean", "Mean", colnames)
colnames <- gsub("std", "Std", colnames)
colnames <- gsub("X", "Xaxis", colnames)
colnames <- gsub("Y", "Yaxis", colnames)
colnames <- gsub("Z", "Zaxis", colnames)

# update the column titles with the changed names  
names(fXtracted) <- colnames

# ------------- STEP 5

# use sqldf to extract the mean values by activity and subject. 

fTidy <- sqldf('select subjectId, activityDesc, 
avg("tBodyAccMeanXaxis"),      
avg("tBodyAccMeanYaxis"),        
avg("tBodyAccMeanZaxis"),       
avg("tBodyAccStdXaxis"),         
avg("tBodyAccStdYaxis"),        
avg("tBodyAccStdZaxis"),         
avg("tGravityAccMeanXaxis"),    
avg("tGravityAccMeanYaxis"),     
avg("tGravityAccMeanZaxis"),    
avg("tGravityAccStdXaxis"),      
avg("tGravityAccStdYaxis"),     
avg("tGravityAccStdZaxis"),      
avg("tBodyAccJerkMeanXaxis"),   
avg("tBodyAccJerkMeanYaxis"),    
avg("tBodyAccJerkMeanZaxis"),   
avg("tBodyAccJerkStdXaxis"),     
avg("tBodyAccJerkStdYaxis"),    
avg("tBodyAccJerkStdZaxis"),     
avg("tBodyGyroMeanXaxis"),      
avg("tBodyGyroMeanYaxis"),       
avg("tBodyGyroMeanZaxis"),      
avg("tBodyGyroStdXaxis"),        
avg("tBodyGyroStdYaxis"),       
avg("tBodyGyroStdZaxis"),        
avg("tBodyGyroJerkMeanXaxis"),  
avg("tBodyGyroJerkMeanYaxis"),   
avg("tBodyGyroJerkMeanZaxis"),  
avg("tBodyGyroJerkStdXaxis"),    
avg("tBodyGyroJerkStdYaxis"),   
avg("tBodyGyroJerkStdZaxis"),    
avg("tBodyAccMagMean"),         
avg("tBodyAccMagStd"),            
avg("tGravityAccMagMean"),       
avg("tGravityAccMagStd"),         
avg("tBodyAccJerkMagMean"),      
avg("tBodyAccJerkMagStd"),        
avg("tBodyGyroMagMean"),         
avg("tBodyGyroMagStd"),           
avg("tBodyGyroJerkMagMean"),     
avg("tBodyGyroJerkMagStd"),       
avg("fBodyAccMeanXaxis"),       
avg("fBodyAccMeanYaxis"),        
avg("fBodyAccMeanZaxis"),       
avg("fBodyAccStdXaxis"),         
avg("fBodyAccStdYaxis"),        
avg("fBodyAccStdZaxis"),         
avg("fBodyAccJerkMeanXaxis"),   
avg("fBodyAccJerkMeanYaxis"),    
avg("fBodyAccJerkMeanZaxis"),   
avg("fBodyAccJerkStdXaxis"),     
avg("fBodyAccJerkStdYaxis"),    
avg("fBodyAccJerkStdZaxis"),     
avg("fBodyGyroMeanXaxis"),      
avg("fBodyGyroMeanYaxis"),       
avg("fBodyGyroMeanZaxis"),      
avg("fBodyGyroStdXaxis"),        
avg("fBodyGyroStdYaxis"),       
avg("fBodyGyroStdZaxis"),        
avg("fBodyAccMagMean"),          
avg("fBodyAccMagStd"),            
avg("fBodyBodyAccJerkMagMean"),  
avg("fBodyBodyAccJerkMagStd"),    
avg("fBodyBodyGyroMagMean"),     
avg("fBodyBodyGyroMagStd"),       
avg("fBodyBodyGyroJerkMagMean"), 
avg("fBodyBodyGyroJerkMagStd") 
from fXtracted
group by subjectId, activityId
order by subjectId, activityId')

# finally clean up the column headers to remove the
# open and closed parenthesis introduced by the 
# sqldf select clause for the 'avg' columns

namesTidy <- names(fTidy)
namesTidy <- gsub("[[:punct:]]", "", namesTidy)
namesTidy <- gsub("avg", "avg_", namesTidy)
names(fTidy) <- namesTidy

# write contents of the tidy data to a file 
write.table(fTidy,"../tidy.txt",row.name=FALSE)





