This code book  describes the variables, the data, and any transformations or work that were performed to clean up the data 
 
 ## Measurements
  "Subject"                             "Activity"                            "TimeBodyAcc-mean()-X"               
 "TimeBodyAcc-mean()-Y"                "TimeBodyAcc-mean()-Z"                "TimeBodyAcc-std()-X"                
  "TimeBodyAcc-std()-Y"                 "TimeBodyAcc-std()-Z"                 "TimeGravityAcc-mean()-X"            
 "TimeGravityAcc-mean()-Y"             "TimeGravityAcc-mean()-Z"             "TimeGravityAcc-std()-X"             
 "TimeGravityAcc-std()-Y"              "TimeGravityAcc-std()-Z"              "TimeBodyAccJerk-mean()-X"           
 "TimeBodyAccJerk-mean()-Y"            "TimeBodyAccJerk-mean()-Z"            "TimeBodyAccJerk-std()-X"            
 "TimeBodyAccJerk-std()-Y"             "TimeBodyAccJerk-std()-Z"             "TimeBodyGyro-mean()-X"              
 "TimeBodyGyro-mean()-Y"               "TimeBodyGyro-mean()-Z"               "TimeBodyGyro-std()-X"               
 "TimeBodyGyro-std()-Y"                "TimeBodyGyro-std()-Z"                "TimeBodyGyroJerk-mean()-X"          
 "TimeBodyGyroJerk-mean()-Y"           "TimeBodyGyroJerk-mean()-Z"           "TimeBodyGyroJerk-std()-X"           
 "TimeBodyGyroJerk-std()-Y"            "TimeBodyGyroJerk-std()-Z"            "TimeBodyAccMag-mean()"              
 "TimeBodyAccMag-std()"                "TimeGravityAccMag-mean()"            "TimeGravityAccMag-std()"            
 "TimeBodyAccJerkMag-mean()"           "TimeBodyAccJerkMag-std()"            "TimeBodyGyroMag-mean()"             
 "TimeBodyGyroMag-std()"               "TimeBodyGyroJerkMag-mean()"          "TimeBodyGyroJerkMag-std()"          
 "FrequencyBodyAcc-mean()-X"           "FrequencyBodyAcc-mean()-Y"           "FrequencyBodyAcc-mean()-Z"          
 "FrequencyBodyAcc-std()-X"            "FrequencyBodyAcc-std()-Y"            "FrequencyBodyAcc-std()-Z"           
 "FrequencyBodyAccJerk-mean()-X"       "FrequencyBodyAccJerk-mean()-Y"       "FrequencyBodyAccJerk-mean()-Z"      
 "FrequencyBodyAccJerk-std()-X"        "FrequencyBodyAccJerk-std()-Y"        "FrequencyBodyAccJerk-std()-Z"       
 "FrequencyBodyGyro-mean()-X"          "FrequencyBodyGyro-mean()-Y"          "FrequencyBodyGyro-mean()-Z"         
 "FrequencyBodyGyro-std()-X"           "FrequencyBodyGyro-std()-Y"           "FrequencyBodyGyro-std()-Z"          
 "FrequencyBodyAccMag-mean()"          "FrequencyBodyAccMag-std()"           "FrequencyBodyBodyAccJerkMag-mean()" 
 "FrequencyBodyBodyAccJerkMag-std()"   "FrequencyBodyBodyGyroMag-mean()"     "FrequencyBodyBodyGyroMag-std()"     
 "FrequencyBodyBodyGyroJerkMag-mean()" "FrequencyBodyBodyGyroJerkMag-std()" 

## Activity includes

Id.          Activity
1            WALKING
2   WALKING_UPSTAIRS
3   WALKING_DOWNSTAIRS
4            SITTING
5           STANDING
6             LAYING


The code runs as follow:

> We read from the specified data files
> we merge the data by column and merge the dataset by rows
> we then use grep to locate mean/std from the features names
> we change the description to characters. The names are already very descriptive, so it dosent seem necessary to change them more.
> we made some changes to the name of the features to make them more descriptive
> we calculate mean across activities/subjects.
