##Getting and cleaning data

# Source of data for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Unzip it to your R working directory

# This R script does the following:

# 1. Loads and merges the training and the test sets to create one data set.

X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
features<-read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

X<-rbind(X_test,X_train)
y<-rbind(y_test,y_train)
subject<-rbind(subject_test,subject_train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
X_names<-grep("-mean\\(\\)|-std\\(\\)",features[,2],ignore.case = TRUE)
X<-X[,X_names]

# 3. Uses descriptive activity names to name the activities in the data set
activities[,2] <- gsub("_"," ",tolower(activities[,2]))
y[,1]<-activities[y[,1], 2]

# 4. Appropriately labels the data set with descriptive variable names. 
X<-setNames(X,gsub("-","_",features[X_names,2]))
X<-setNames(X, gsub("\\(|\\)", "", names(X)))
y<-setNames(y,"activity")
subject<-setNames(subject,"subject")

data<-cbind(subject,y,X)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

# First installing dplyr package if not installed yet.
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
library(dplyr)

avg_data<-group_by(data,subject,activity)
avg_data<-summarise_each(avg_data,funs(mean))

# Writing data to your R working directory final_data_set.txt file.
write.table(avg_data, "./final_data_set.txt", row.name=FALSE)
