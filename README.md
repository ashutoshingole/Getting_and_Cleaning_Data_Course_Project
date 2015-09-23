# Getting_and_Cleaning_Data_Course_Project
##This Directory contains Four files including this README.md file.
1. CodeBook.md : This file contains the variables, the data, and any transformations or work that I have performed to clean up the data.
2. README.md : This file which you are reading right now!
3. run_analysis.R : It includes the actual "R" code of this project.
4. average.txt : It is a text file containg the output of the project, which is nothing but the final tidy data set as asked to generate.


### The "R" code for this project is in "run_analysis.R" file. The code is divided in 5 parts and what each part does is mentioned below(We assume that all the required input data is already downloaded from the given link on course page and all that data is present in the same directory as the code file and also the data is unzipped).
1. This part reads and merges the training data and test data as required.

2. This part extracts only the measurements on the mean and standard deviation for each measurement.

3. This part uses descriptive activity names to name the activities in the data set.

4. This part appropriately labels the data set with descriptive variable names.

5. This part creates an another, independent tidy data set with the average of each variable for each activity and each subject.

###On completion of all the above steps, this code generates a text file (tidy data set) named "average.txt" which is our final output for this project.
