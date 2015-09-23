## This CodeBook explains the "R" code in "run_analysis.R" file and all variables and data in "average.txt" file.

### run_analysis.R
This file contains the actual "R" code written for this project.

1. This part reads and merges the training data and test data as required.

2. This part extracts only the measurements on the mean and standard deviation for each measurement.

3. This part uses descriptive activity names to name the activities in the data set.

4. This part appropriately labels the data set with descriptive variable names.

5. This part creates an another, independent tidy data set with the average of each variable for each activity and each subject.

Variables used in the code are explained below.
* We read `X_test.txt` and `X_train.txt` files and merge them into `X_merge` using `rbind()` function.
* We read `y_test.txt` and `y_train.txt` files and merge them into `y_merge` using `rbind()` function.
* We read `sub_test.txt` and `sub_train.txt` files and merge them into `sub_merge` using `rbind()` function.
* Then we select only those columns which measure either `mean` or `standard deviation` from the whole dataset. We give them appropriate names which are taken from `features.txt` file.
* Variable `feat` contains the column names required for data in `X_merge`. These column names are applied over the data in `msf` variable.
* Variable `act` is used to store the activity names and id's from `activity_lable.txt`.
* Now we take activity names and their id's from `act` variable and apply them in the dataset.
* Then at last we generate a new tidy dataset named `average.txt` with all the average measures for each subject and activity type.
* We used `ddply()` function from `plyr` package.

### average.txt
#### Identifiers
1. subject
2. activity

#### Measurements
* tBodyAcc-mean()-X 
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z 
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z 
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z 
* tBodyGyro-std()-X
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z 
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean() 
* tBodyAccMag-std() 
* tGravityAccMag-mean()
* tGravityAccMag-std() 
* tBodyAccJerkMag-mean() 
* tBodyAccJerkMag-std() 
* tBodyGyroMag-mean()
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-mean() 
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y 
* fBodyAccJerk-mean()-Z 
* fBodyAccJerk-std()-X 
* fBodyAccJerk-std()-Y 
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X 
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z 
* fBodyGyro-std()-X
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z
* fBodyAccMag-mean() 
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std() 
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean() 
* fBodyBodyGyroJerkMag-std()
