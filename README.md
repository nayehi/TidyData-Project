#Getting and Cleaning Data Course Project - Week 3
Version 1.0
GitHub User Name: nayehi

#DATA SOURCE
This project is based on the Human Activity Recognition Using Smartphones Dataset (Version 1.0), 
downloadable from the following URL: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

#DATASET CREDITS:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

#OVERVIEW OF ORIGINAL DATA
According to documentation provided with the dataset, it is based on experiments carried out with a 
group of 30 volunteers in the age bracket of 19-48 years.

In these experiments, each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
while wearing a smartphone (Samsung Galaxy S II) at the waist. 
  
Using the smartphone's embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. 

The researches then partitioned the obtained dataset into two sets, in which 70% of the volunteers were selected for generating the Training data and 30% the Test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters, then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'Feature Selection' at the bottom of this document for more information.

Features were normalized and bounded within [-1,1].
Each feature vector is a row in the data file.

##Each record consists of:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Activity label.
- An identifier of the subject who carried out the experiment.

The Test data consists of 2947 observations across 561 variables.
The Training data consists of 7352 observations across the same 561 variables. 

#CURRENT PROJECT

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
The first variable contains the activity being performed by the subject. The second variable contains the subject_id.
The remaining variables, identified by labels that begin with "mean_", contain calculated means that apply to the 
activity-subject_id pairs. These means were calculated from the mean and standard deviation values in the original Test and Training
data.

Abbreviations that appear in labels:
accel: accelerometer
freq: frequency
gyro: gyroscope
standarddev: standarddeviation

The results of the script are output to a file named "TidyData.txt", which includes one header line.

Variables:
1) activity: the activity being performed by the subject at the time of measure (Values: Laying, Sitting, Standing, Walking, Walking_upstairs, Walking_downstairs)
2) subject_id: the unique identifier for the subject performing the activity (Values: 1-30)                               





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


==========================================================================================
Feature Selection (extracted from original documentation)
==========================================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a 
median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration 
signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
