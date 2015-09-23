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
