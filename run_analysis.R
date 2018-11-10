##Prior to running this script, download the data file,
##placing it in the the working directory.
##The file URL is:
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
##Once the file is downloaded, it will need to be
##unzipped.
##The relative paths below are based on the working 
##directory 

##Read the 'features' table into R; it contains the header
##information for x_test and x_train data.
features <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/features.txt")

##Read the 'activity_labels' table into R; it contains the activity ids
##and associated descriptions for the x_test and x_train data.
activity_labels <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

##Label the columns of 'activity_labels'
colnames(activity_labels) <- c("activity_id","activity")

##Read the 'test' files into R.
x_test <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

##Read the 'train' tables into R
x_train <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

##Add the second column of 'features' as headers for 
##x_test and x_train.
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]

##Set the column names for y_test and y_train to
##activity_id.
colnames(y_test) <- "activity_id"
colnames(y_train) <- "activity_id"

##Set the column names for subject_test and 
##subject_train to subject_id.
colnames(subject_test) <- "subject_id"
colnames(subject_train) <- "subject_id"

##All columns now have names.

##Combine all test files; combine all train files.
test <- cbind(subject_test,y_test,x_test)
train <- cbind(subject_train,y_train,x_train)

##Label the test and train rows to show the datasets
##to which they belong.
test$dataset <- "test"
train$dataset <- "train"

##Task 1: Merge the training and the test sets to create one data set.

##Create a new table, 'merged', in which the train
##data is appended to the text data
merged <- rbind(test,train)

##Task 2: Extract only the measurements on the mean and 
##standard deviation for each measurement.

##Determine the columns with mean and standard 
##deviation computations, asl well as the activity
##and subject columns

getmeanstd <- (grepl("subject_id",names(merged)) |
                 grepl("activity_id",names(merged)) |
                 grepl("mean",names(merged)) |
                 grepl("std",names(merged)))

meanstd <- merged[ , getmeanstd == TRUE]

##Merge getmeanstd with activity_labels
##to show the activities associated with
##the activity_ids.

meanstd_w_act <- merge(activity_labels,meanstd,by = "activity_id",all.x = TRUE)

##Label the data set with descriptive variable names.
names(meanstd_w_act) <- gsub("BodyBody", "Body", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("tBody", "time_body_", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("tGravity", "time_gravity_", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("fBody", "freq_body_", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("Jerk", "jerk", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("Gyro", "gyro", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("Acc", "accel", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("Mag", "magnitude", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("acceljerk", "accel_jerk", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("gyrojerk", "gyro_jerk", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("accmagnitude", "acc_magnitude", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("jerkmagnitude", "jerk_magnitude", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("gyromagnitude", "gyro_magnitude", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("accelmagnitude", "accel_magnitude", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("meanFreq", "mean_freq", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("std", "standarddev", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("-X", "-x_axis", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("-Y", "-y_axis", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("-Z", "-z_axis", names(meanstd_w_act))
names(meanstd_w_act) <- gsub("\\(\\)", "", names(meanstd_w_act))


##Remove activity_id column since the activities are now
##included in the data
library(dplyr)
meanstd_w_act <- select(meanstd_w_act, -activity_id)

##Convert activity column to lowercase to enhance readability
meanstd_w_act$activity <- tolower(meanstd_w_act$activity)

##Capitalize the first letter in activity to enhance readability
meanstd_w_act$activity <- paste0(toupper(substr(meanstd_w_act$activity, 1, 1)), substr(meanstd_w_act$activity, 2, nchar(meanstd_w_act$activity)))

##Aggregate the data, calculate the means
aggdata <- aggregate(. ~ activity + subject_id, data = meanstd_w_act, mean)  

##Rename the columns to prepend the string "mean_"; 
##they are now means calculations and not the original 
##values
colnames(aggdata) <- paste0("mean_", colnames(aggdata))
colnames(aggdata)[1] <- "activity"
colnames(aggdata)[2] <- "subject_id"

##Sort the data by activity, then subject
aggdata_sort <- aggdata[order(aggdata$activity, aggdata$subject_id),]

##Write the table data to a file
write.table(aggdata_sort, "TidyData.txt", row.name=FALSE)
