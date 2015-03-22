run_analysis <- function() {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 1. Merge the training and the test sets to create one data set.
  ##  
  ##  working directory is where the unzipped folder "UCI HAR Dataset" exists.
  ##
  ##  1) read all tables        
 
        X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE) 
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)        
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
        
        X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
           
  ##   2) bind columns for each TEST & TRAIN data set
  
        TESTdata <- cbind(y_test, subject_test, X_test)
        TRAINdata <- cbind(y_train, subject_train, X_train)
  
  ##   3) bind rows of TEST & TRAIN data set
  
        Merged_data <- rbind(TRAINdata, TESTdata)
  ##
  ## 4. Label the data set with variable names
  ##
  ## (Step 4 in the assignment comes before Step 2/3.)
  ##
        features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
        listofNames <-as.character(features[,2])
        listofNames <- make.names(listofNames, unique=TRUE)
        colnames(Merged_data) <- c("Training_Label","Subject",listofNames)
  
  ##
  ## 2. Extract measurements on the mean and standard deviation for each.
  ##
  ##  (Definition for above: All the variables including "mean" or "std" in the names listed in features.txt.)
  ##
  
        cols <- sort (c(grep('mean',listofNames),(grep('std',listofNames))))
        Extract_data <- Merged_data[,c(1,2,cols+2)]
  
  ##
  ## 3. Use descriptive activity names.
  ##
        activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
        Extract_data[,1] <- activity[Extract_data[,1], 2]
  
  ##
  ## 5. Create independent tidy data set.
  ##
        Tidy_data <- group_by(Extract_data, Training_Label, Subject)      
}