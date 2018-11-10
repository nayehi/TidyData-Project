#Getting and Cleaning Data Course Project - Week 3
Version 1.0
GitHub User Name: nayehi

#Data Source
This project is based on the [Human Activity Recognition Using Smartphones Dataset (Version 1.0)]
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

#Dataset Credits
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  

Smartlab - Non Linear Complex Systems Laboratory  

DITEN - Università degli Studi di Genova. 

Via Opera Pia 11A, I-16145, Genoa, Italy.  

activityrecognition@smartlab.ws  

www.smartlab.ws  


#Overview of Original Data
According to documentation provided with the dataset, it is based on experiments carried out with a 
group of 30 volunteers in the age bracket of 19-48 years.

In these experiments, each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
while wearing a smartphone (Samsung Galaxy S II) at the waist. 
  
Using the smartphone's embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. 

The researches then partitioned the obtained dataset into two sets, in which 70% of the volunteers were selected for generating the Training data and 30% the Test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters, then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. [View Feature Details](https://github.com/nayehi/TidyData-Project/blob/master/Features). Features were normalized and bounded within [-1,1]. Each feature vector is a row in the data file.

##Each record consists of:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Activity label.
- An identifier of the subject who carried out the experiment.

The Test data consists of 2947 observations across 561 variables.
The Training data consists of 7352 observations across the same 561 variables. 

#Current Project

The data for the current project consists of the Test and Training files, along with the associated variable names and a mapping of
experiment activities to unique identifiers, which have been stored in separate files.

The project was to write a single script, run_analysis.R, which does the following:
1) Merge the training and the test sets to create one data set.
2) Extract only the measurements on the mean and standard deviation for each measurement.
3) Use descriptive activity names to name the activities in the data set.
4) Appropriately label the data set with descriptive variable names.
5) From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and 
each subject.

This script resulted in 180 observations across 81 variables.

[View Descriptions of Variables](https://github.com/nayehi/TidyData-Project/blob/master/Variables)

The results of the script are output to a file named "TidyData.txt", which includes one header line.

#Package Content
This package includes the following files:
- 'README.MD'
- 'run_analysis.R'

This package is distributed AS-IS and no responsibility implied or explicit can be addressed to the author for its use or misuse.

nayehi. November 2018. 

#License:

Any commercial use is prohibited.

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


