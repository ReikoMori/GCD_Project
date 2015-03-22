---
title: "CodeBook for the Course Project"
author: "Reiko Mori"
date: "March 22, 2015"
---

*  *  *  *

## Contents
+ **The Data**
+ **The Variables**
+ **Data Transformation and Work Performed**

*  *  *  *

### The Data

The data used in this project is the data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The data was obtained from the site named "Human Activity Recognition Using Smartphones Data Set".
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Source data for this project has been obtained from following: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Files used for this project are the following of the unzipped folder of above source data:

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Following files are also used to label the variables and to use descriptive activity names:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

*  *  *  *
### The variables

The variables used in the output dataset are following:

Column 1 - 'Activity_Label' : Name of the activity 

Column 2 - 'Subject' : Subject ID

Column 3 to 69 - variables with their descriptive variable names specified in 'features.txt' that include mean() and std() included. 

For descriptions of each variables, please see 'features_info.txt'.

### Data Transformation and Work Performed

Data transformation was done in following steps, as indicated in the Course Project description. However, the order has been changed for step 4 to come just after step 1.

1. Merge the training and the test sets to create one data set.

2. Extract only the measurements on the mean and standard deviation for each measurement. 

3. Use descriptive activity names to name the activities in the data set.

4. Appropriately label the data set with descriptive variable names. 

5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

For descriptions of work done for each step, please see the comments in the code.

*  *  *  *

