#Code Book

We have calculated variables from the UCI HAR Dataset.  This dataset contains data collected from mobile phone acclerometers.
Along with the raw sensor data this also contains information about the subject carrying the mobile phone and the activity they are performing.
For more information on this data set see: 


http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



Raw data available here: 


https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



We have performed transformations on this data.  We have extracted the average and standard deviation columns.
We then calculate the average of this extracted data grouped by the activity and the subject.  ie for each subject we average all measurement for a particular activity.

##Variables

 [1] "activity" - the activiy being performed during measurement.

 [2] "subject" - the subject being recorded.


The remaining variables are the calculated means described above and named below:

 [3] "mean of tBodyAcc.mean...X"              
 [4] "mean of tBodyAcc.mean...Y"              
 [5] "mean of tBodyAcc.mean...Z"              
 [6] "mean of tBodyAcc.std...X"               
 [7] "mean of tBodyAcc.std...Y"               
 [8] "mean of tBodyAcc.std...Z"               
 [9] "mean of tGravityAcc.mean...X"           
[10] "mean of tGravityAcc.mean...Y"           
[11] "mean of tGravityAcc.mean...Z"           
[12] "mean of tGravityAcc.std...X"            
[13] "mean of tGravityAcc.std...Y"            
[14] "mean of tGravityAcc.std...Z"            
[15] "mean of tBodyAccJerk.mean...X"          
[16] "mean of tBodyAccJerk.mean...Y"          
[17] "mean of tBodyAccJerk.mean...Z"          
[18] "mean of tBodyAccJerk.std...X"           
[19] "mean of tBodyAccJerk.std...Y"           
[20] "mean of tBodyAccJerk.std...Z"           
[21] "mean of tBodyGyro.mean...X"             
[22] "mean of tBodyGyro.mean...Y"             
[23] "mean of tBodyGyro.mean...Z"             
[24] "mean of tBodyGyro.std...X"              
[25] "mean of tBodyGyro.std...Y"              
[26] "mean of tBodyGyro.std...Z"              
[27] "mean of tBodyGyroJerk.mean...X"         
[28] "mean of tBodyGyroJerk.mean...Y"         
[29] "mean of tBodyGyroJerk.mean...Z"         
[30] "mean of tBodyGyroJerk.std...X"          
[31] "mean of tBodyGyroJerk.std...Y"          
[32] "mean of tBodyGyroJerk.std...Z"          
[33] "mean of tBodyAccMag.mean.."             
[34] "mean of tBodyAccMag.std.."              
[35] "mean of tGravityAccMag.mean.."          
[36] "mean of tGravityAccMag.std.."           
[37] "mean of tBodyAccJerkMag.mean.."         
[38] "mean of tBodyAccJerkMag.std.."          
[39] "mean of tBodyGyroMag.mean.."            
[40] "mean of tBodyGyroMag.std.."             
[41] "mean of tBodyGyroJerkMag.mean.."        
[42] "mean of tBodyGyroJerkMag.std.."         
[43] "mean of fBodyAcc.mean...X"              
[44] "mean of fBodyAcc.mean...Y"              
[45] "mean of fBodyAcc.mean...Z"              
[46] "mean of fBodyAcc.std...X"               
[47] "mean of fBodyAcc.std...Y"               
[48] "mean of fBodyAcc.std...Z"               
[49] "mean of fBodyAcc.meanFreq...X"          
[50] "mean of fBodyAcc.meanFreq...Y"          
[51] "mean of fBodyAcc.meanFreq...Z"          
[52] "mean of fBodyAccJerk.mean...X"          
[53] "mean of fBodyAccJerk.mean...Y"          
[54] "mean of fBodyAccJerk.mean...Z"          
[55] "mean of fBodyAccJerk.std...X"           
[56] "mean of fBodyAccJerk.std...Y"           
[57] "mean of fBodyAccJerk.std...Z"           
[58] "mean of fBodyAccJerk.meanFreq...X"      
[59] "mean of fBodyAccJerk.meanFreq...Y"      
[60] "mean of fBodyAccJerk.meanFreq...Z"      
[61] "mean of fBodyGyro.mean...X"             
[62] "mean of fBodyGyro.mean...Y"             
[63] "mean of fBodyGyro.mean...Z"             
[64] "mean of fBodyGyro.std...X"              
[65] "mean of fBodyGyro.std...Y"              
[66] "mean of fBodyGyro.std...Z"              
[67] "mean of fBodyGyro.meanFreq...X"         
[68] "mean of fBodyGyro.meanFreq...Y"         
[69] "mean of fBodyGyro.meanFreq...Z"         
[70] "mean of fBodyAccMag.mean.."             
[71] "mean of fBodyAccMag.std.."              
[72] "mean of fBodyAccMag.meanFreq.."         
[73] "mean of fBodyBodyAccJerkMag.mean.."     
[74] "mean of fBodyBodyAccJerkMag.std.."      
[75] "mean of fBodyBodyAccJerkMag.meanFreq.." 
[76] "mean of fBodyBodyGyroMag.mean.."        
[77] "mean of fBodyBodyGyroMag.std.."         
[78] "mean of fBodyBodyGyroMag.meanFreq.."    
[79] "mean of fBodyBodyGyroJerkMag.mean.."    
[80] "mean of fBodyBodyGyroJerkMag.std.."     
[81] "mean of fBodyBodyGyroJerkMag.meanFreq.."

