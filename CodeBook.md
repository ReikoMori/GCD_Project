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


*  *  *  *
### The variables

### Data Transformation and Work Performed

This section describes any changes or alterations made to the data during processing. For a explaination of how the script works you should look at the *README.md* and the code *run_analysis.R* files.


**Merges the training and the test sets to create one data set.**

During this step no changes were made to the contents of the datasets.The *test* and *train* samples were joined together into a dataframe containing [*Activity, SubjectID, Variable_1, ..., Variable_561*].

**Extracts only the measurements on the mean and standard deviation for each measurement.** 

The instruction to extact only the mean and standard deviation for each measurement was interpreted to mean only those variables that were estimated from the signals using: 

        mean(): Mean value
        std(): Standard deviation

These variable were identified by the use of *-mean()* and *-std()* in the variable name.These 66 variables were extracted into a new dataframe along with the *Activity* and *SubjectID* identifiers.

**Uses descriptive activity names to name the activities in the data set.**

The *Activity* variable contained numbers 1-6 corresponding to *WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING* repectively. For this step the number was replaced with the corresponding descriptive activity name.

**Appropriately labels the data set with descriptive variable names.**

Descriptive variable names were added to the dataset. For the most part the names supplied with the project were suitable descriptive but some clean up was required.

For example:
*Sub* became *SubjectID*
*6 tBodyAcc-std()-X* became  *tBodyAcc-std()-X-Axis*

The *Data Dictionary* contains the full list of all descriptive variable names.

**From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.**

For the final processing step the dataset was first grouped by *Activity* and then *SubjectID*. The *summarise_each()* function was then used to extract the average of each of the 66 variable for the 180 different groupings of activity and subject into a new dataframe called *tidyData*.

This completed the projects processing steps.

*  *  *  *

