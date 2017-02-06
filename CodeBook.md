This code book  describes the variables, the data, and any transformations or work that you performed to clean up the data 
 
 ## Measurements
  [1] "Subject"                             "Activity"                            "TimeBodyAcc-mean()-X"               
 [4] "TimeBodyAcc-mean()-Y"                "TimeBodyAcc-mean()-Z"                "TimeBodyAcc-std()-X"                
 [7] "TimeBodyAcc-std()-Y"                 "TimeBodyAcc-std()-Z"                 "TimeGravityAcc-mean()-X"            
[10] "TimeGravityAcc-mean()-Y"             "TimeGravityAcc-mean()-Z"             "TimeGravityAcc-std()-X"             
[13] "TimeGravityAcc-std()-Y"              "TimeGravityAcc-std()-Z"              "TimeBodyAccJerk-mean()-X"           
[16] "TimeBodyAccJerk-mean()-Y"            "TimeBodyAccJerk-mean()-Z"            "TimeBodyAccJerk-std()-X"            
[19] "TimeBodyAccJerk-std()-Y"             "TimeBodyAccJerk-std()-Z"             "TimeBodyGyro-mean()-X"              
[22] "TimeBodyGyro-mean()-Y"               "TimeBodyGyro-mean()-Z"               "TimeBodyGyro-std()-X"               
[25] "TimeBodyGyro-std()-Y"                "TimeBodyGyro-std()-Z"                "TimeBodyGyroJerk-mean()-X"          
[28] "TimeBodyGyroJerk-mean()-Y"           "TimeBodyGyroJerk-mean()-Z"           "TimeBodyGyroJerk-std()-X"           
[31] "TimeBodyGyroJerk-std()-Y"            "TimeBodyGyroJerk-std()-Z"            "TimeBodyAccMag-mean()"              
[34] "TimeBodyAccMag-std()"                "TimeGravityAccMag-mean()"            "TimeGravityAccMag-std()"            
[37] "TimeBodyAccJerkMag-mean()"           "TimeBodyAccJerkMag-std()"            "TimeBodyGyroMag-mean()"             
[40] "TimeBodyGyroMag-std()"               "TimeBodyGyroJerkMag-mean()"          "TimeBodyGyroJerkMag-std()"          
[43] "FrequencyBodyAcc-mean()-X"           "FrequencyBodyAcc-mean()-Y"           "FrequencyBodyAcc-mean()-Z"          
[46] "FrequencyBodyAcc-std()-X"            "FrequencyBodyAcc-std()-Y"            "FrequencyBodyAcc-std()-Z"           
[49] "FrequencyBodyAccJerk-mean()-X"       "FrequencyBodyAccJerk-mean()-Y"       "FrequencyBodyAccJerk-mean()-Z"      
[52] "FrequencyBodyAccJerk-std()-X"        "FrequencyBodyAccJerk-std()-Y"        "FrequencyBodyAccJerk-std()-Z"       
[55] "FrequencyBodyGyro-mean()-X"          "FrequencyBodyGyro-mean()-Y"          "FrequencyBodyGyro-mean()-Z"         
[58] "FrequencyBodyGyro-std()-X"           "FrequencyBodyGyro-std()-Y"           "FrequencyBodyGyro-std()-Z"          
[61] "FrequencyBodyAccMag-mean()"          "FrequencyBodyAccMag-std()"           "FrequencyBodyBodyAccJerkMag-mean()" 
[64] "FrequencyBodyBodyAccJerkMag-std()"   "FrequencyBodyBodyGyroMag-mean()"     "FrequencyBodyBodyGyroMag-std()"     
[67] "FrequencyBodyBodyGyroJerkMag-mean()" "FrequencyBodyBodyGyroJerkMag-std()" 

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
> we change the description to characters
> we made some changes to the name of the features to make them more descriptive
> we calculate mean across activities
