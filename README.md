# Getting and Cleaning Data - Course Project - Week 4
Version 1.0  
GitHub User Name: nayehi

# Overview
This project reads data files into R, restructures the data, calculates mean values, and writes a tidy data output file. 
It is based on the Human Activity Recognition Using Smartphones Dataset (Version 1.0). 

# Data Source
According to documentation provided with the Human Activity Recognition Using Smartphones Dataset, it is based on experiments carried out with a group of 30 volunteers in the age bracket of 19-48 years.

In these experiments, each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying)
while wearing a smartphone (Samsung Galaxy S II) at the waist. 
  
Using the smartphone's embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. 

The researches then partitioned the obtained dataset into two sets, in which 70% of the volunteers were selected for generating the Training data and 30% the Test data. [View more details](https://github.com/nayehi/TidyData-Project/blob/master/ExperimentDetails). 

The Test data consists of 2947 observations across 561 variables.
The Training data consists of 7352 observations across the same 561 variables.
[Read about the variables](https://github.com/nayehi/TidyData-Project/blob/master/Features.md).


# This Project
The input data for the current project consists of the Test and Training files, along with the associated variable names and a mapping of experiment activities to unique identifiers, which have been stored in separate files.

This project resulted in a single script, [run_analysis.R](https://github.com/nayehi/TidyData-Project/blob/master/run_analysis.R), which does the following:
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Applies descriptive activity names to name the activities in the data set.
4) Labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and 
each subject.

# Process
1) Prior to running this script, **download** the [data file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), placing it in the the working directory. 
2) **Unzip** the file into its current location (the working directory).
3) **Launch the script.** It will read files into R based on their locations relative to the working directory.
4) Locate the resulting **output file named "TidyData.txt"** in the working directory.

"TidyData.txt" includes one header line. Contained in this file are 180 observations across 81 variables.  
[View Descriptions of Variables](https://github.com/nayehi/TidyData-Project/blob/master/Variables)

# Package Content
This package includes the following files:
- 'README.md'
- 'run_analysis.R'

This package is distributed AS-IS and no responsibility implied or explicit can be addressed to the author for its use or misuse.

nayehi. November 2018. 

# Dataset Credits
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  

Smartlab - Non Linear Complex Systems Laboratory  

DITEN - Università degli Studi di Genova. 

Via Opera Pia 11A, I-16145, Genoa, Italy.  

activityrecognition@smartlab.ws  

www.smartlab.ws  

# License:

Any commercial use is prohibited.

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on 
Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


