# TidyData-Project Codebook
GitHub User Name: nayehi  
October 2018

This codebook describes the variables in the TidyData Project. It reads the data files into R, restructures the data, calculates 
mean values, and writes a tidy data output file. 

## Input Data
This project is based on the Human Activity Recognition Using Smartphones Dataset (Version 1.0), which consists of 
[561 variables](https://github.com/nayehi/TidyData-Project/blob/master/Features.md). The data resulted from an experiment in which
30 subjects performed six activities while wearing smartphones that output accelerometer and gyroscope readings.

## Processing
The script for this project, [run_analysis.R](https://github.com/nayehi/TidyData-Project/blob/master/run_analysis.R), loads the input 
data into R. From that data, it extracts only the columns consisting of calculated means and standard deviations. It restructures the
data, calculates means for the extracted columns by activity and by subject_id, and writes the output to a tidy data file. This output
consists of 180 observations across 81 variables.

## Variables

For convenience, the column numbers for the variables have been provided below. 
                  
 | Column #        | Variable Name      | Description  |
| -------------: |:-------------:| :-----|
| 1      | activity      |   the activity being performed by the subject at the time of measure (Values: Laying, Sitting, Standing, Walking, Walking_upstairs, Walking_downstairs)      |
| 2 | subject_id    |    the unique identifier for the subject performing the activity (Values: 1-30)  |

The remaining 79 variables represent calculations of the mean values of the original data for each activity and subject_id. 
The elements of these labels are separated by underscores.

The remaining variables, identified by labels that begin with "mean_", contain calculated means that apply to the 
activity-subject_id pairs. These means were calculated from the mean and standard deviation values in the original Test and Training
data.

The first four elements are:
"mean" - all variable names start with "mean" to indicate they are calcuated mean values
"time" / "freq" - indicates whether the initial value was based on the time domain or the frequency domain
"body" / "gravity" - indicates whether the initial value was based on the body or gravity measure
"accel" / "gyro" - indicates whether the initial value measure originated with the accelerometer or the gyroscope

The remaining elements provide additional layers of specificity. These are:
"mean" - the input data was a calculated mean
"standarddev" - the input data was a standard deviation calculation
"jerk" - a measure of jerk within the activity
"magnitude" - a measure of magnitude

The full headers for these variables appear below.


--------------------------------------------------------------------------------
  Column #  Variable Name                              Description
----------- ------------------------------------------ -------------------------
 
   3        mean_time_body_accel-mean-x_axis           mean calculated on the mean time body measure from the accelerometer for the x axis
 
   4        mean_time_body_accel-mean-y_axis           mean calculated on the mean time body measure from the accelerometer for the y axis|
   
   

 
---------------------------------------------------------------------------------

-------------------------------------------------------------------------------
| Column #        | Variable Name                              | Description  |
| -------------: |:--------------------------------------:| :-----|
---------- -------------------------------------------- -----------------------

| 3      | mean_time_body_accel-mean-x_axis      |  mean calculated on the mean time body measure from the accelerometer for the x axis|

| 4      | mean_time_body_accel-mean-y_axis     |   mean calculated on the mean time body measure from the accelerometer for the y axis|

| 5      | mean_time_body_accel-mean-z_axis     |   mean calculated on the mean time body measure from the accelerometer for the z axis|

| 6      | mean_time_body_accel-standarddev-x_axis     |   mean calculated on the standard deviation of the time body measure from the accelerometer for the x axis|

| 7      | mean_time_body_accel-standarddev-y_axis     |   mean calculated on the standard deviation of the time body measure from the accelerometer for the y axis|

| 8      | mean_time_body_accel-standarddev-z_axis     |   mean calculated on the standard deviation of the time body measure from the accelerometer for the x axis|

| 9      | mean_time_gravity_accel-mean-x_axis    |   mean calculated on the mean time gravity measure from the accelerometer for the x axis|

-------------------------------------------------------------------------------

| 10      | mean_time_gravity_accel-mean-y_axis     |   mean calculated on the mean time gravity measure from the accelerometer for the y axis|
| 11      | mean_time_gravity_accel-mean-z_axis    |   mean calculated on the mean time gravity measure from the accelerometer for the z axis  |
| 12      | mean_time_gravity_accel-standarddev-x_axis     |   mean calculated on the standard deviation of the time gravity measure from the accelerometer for axis x|
| 13      | mean_time_gravity_accel-standarddev-y_axis     |   mean calculated on the standard deviation of the time gravity measure from the accelerometer for axis y|
| 14      | mean_time_gravity_accel-standarddev-z_axis     |   mean calculated on the standard deviation of the time gravity measure from the accelerometer for axis z|
| 15      | mean_time_body_accel_jerk-mean-x_axis     |   mean calculated on the mean time body jerk measure from the accelerometer for the x axis|
| 16      | mean_time_body_accel_jerk-mean-y_axis     |   mean calculated on the mean time body jerk measure from the accelerometer for the axis y|
| 17      | mean_time_body_accel_jerk-mean-z_axis     |   mean calculated on the mean time body jerk measure from the accelerometer for the axis z|
| 18      | mean_time_body_accel_jerk-standarddev-x_axis    |   mean calculated on the standard deviation of the time body jerk measure from the accelerometer for the x axis|
| 19      | mean_time_body_accel_jerk-standarddev-y_axis    |   mean calculated on the standard deviation of the time body jerk measure from the accelerometer for the y axis|
| 20      | mean_time_body_accel_jerk-standarddev-z_axis    |   mean calculated on the standard deviation of the time body jerk measure from the accelerometer for the z axis|
| 21      |mean_time_body_gyro-mean-x_axis     |   mean calculated on the mean time body measure from the gyroscope for the x axis|
| 22      |mean_time_body_gyro-mean-y_axis     |   mean calculated on the mean time body measure from the gyroscope for the y axis|
| 23      |mean_time_body_gyro-mean-z_axis     |   mean calculated on the mean time body measure from the gyroscope for the z axis|
| 24      |mean_time_body_gyro-standarddev-x_axis     |   mean calculated on the standard deviation of the time body measure from the gyroscope for the x axis|
| 25      |mean_time_body_gyro-standarddev-y_axis     |   mean calculated on the standard deviation of the time body measure from the gyroscope for the y axis|
| 26      |mean_time_body_gyro-standarddev-z_axis     |   mean calculated on the standard deviation of the time body measure from the gyroscope for the z axis|
| 27      |mean_time_body_gyro_jerk-mean-x_axis     |   mean calculated on the mean time body jerk measure from the gyroscope for the x axis|
| 28      |mean_time_body_gyro_jerk-mean-y_axis     |   mean calculated on the mean time body jerk measure from the gyroscope for the y axis|
| 29      |mean_time_body_gyro_jerk-mean-z_axis     |   mean calculated on the mean time body jerk measure from the gyroscope for the z axis|
| 30      |mean_time_body_gyro_jerk-standarddev-x_axis    |   mean calculated on the standard deviation of the time body jerk from the gyroscope for the x axis|
| 31      |mean_time_body_gyro_jerk-standarddev-y_axis    |   mean calculated on the standard deviation of the time body jerk from the gyroscope for the y axis|
| 32      |mean_time_body_gyro_jerk-standarddev-z_axis    |   mean calculated on the standard deviation of the time body jerk from the gyroscope for the z axis|
| 33      |mean_time_body_accel_magnitude-mean    |   mean calculated on the mean time body magnitude from the gyroscope|
| 34      |mean_time_body_accel_magnitude-standarddev    |   mean calculated on the standard deviation of the time body magnitude from the gyroscope|
| 35      |mean_time_gravity_accel_magnitude-mean    |   mean calculated on the mean time gravity magnitude from the accelerometer|
| 36      |mean_time_gravity_accel_magnitude-standarddev    |   mean calculated on the standard deviation of the time gravity magnitude from the accelerometer|
| 37      |mean_time_body_accel_jerk_magnitude-mean    |   mean calculated on the mean time body jerk magnitude from the accelerometer|
| 38      |mean_time_body_accel_jerk_magnitude-standarddev    |   mean calculated on the standard deviation of the time body jerk magnitude from the accelerometer|
| 39     |mean_time_body_gyro_magnitude-mean   |   mean calculated on the mean time body magnitude from the gyroscope|
| 40     |mean_time_body_gyro_magnitude-standarddev   |   mean calculated on the standard deviation of the time body magnitude from the gyroscope|
| 41    |mean_time_body_gyro_jerk_magnitude-mean   |   mean calculated on the mean time body jerk magnitude from the gyroscope|
| 42     |mean_time_body_gyro_jerk_magnitude-standarddev   |   mean calculated on the standard deviation of the time body jerk magnitude from the gyroscope|
| 43     |mean_freq_body_accel-mean-x_axis   |   mean calculated on the mean frequency body from the accelerometer for the x axis|
| 44    |mean_freq_body_accel-mean-y_axis   |   mean calculated on the mean frequency body from the accelerometer for the y axis|
| 45    |mean_freq_body_accel-mean-z_axis   |   mean calculated on the mean frequency body from the accelerometer for the z axis|
| 46   |mean_freq_body_accel-standarddev-x_axis   |   mean calculated on the standard deviation of the frequency body from the accelerometer for the x axis|
| 47   |mean_freq_body_accel-standarddev-y_axis   |   mean calculated on the standard deviation of the frequency body from the accelerometer for the y axis|
| 48   |mean_freq_body_accel-standarddev-z_axis   |   mean calculated on the standard deviation of the frequency body from the accelerometer for the z axis|
| 49     |mean_freq_body_accel-mean_freq-x_axis   |   mean calculated on the mean frequency body from the accelerometer for the x axis|
| 50     |mean_freq_body_accel-mean_freq-y_axis   |   mean calculated on the mean frequency body from the accelerometer for the y axis|
| 51     |mean_freq_body_accel-mean_freq-z_axis   |   mean calculated on the mean frequency body from the accelerometer for the z axis|
| 52     |mean_freq_body_accel_jerk-mean-x_axis   |   mean calculated on the mean frequency body jerk from the accelerometer for the x axis|
| 53     |mean_freq_body_accel_jerk-mean-y_axis   |   mean calculated on the mean frequency body jerk from the accelerometer for the y axis|
| 54     |mean_freq_body_accel_jerk-mean-z_axis   |   mean calculated on the mean frequency body jerk from the accelerometer for the z axis|
| 55     |mean_freq_body_accel_jerk-standarddev-x_axis  |   mean calculated on the standard deviation of the frequency body jerk from the accelerometer for the x axis|
| 56     |mean_freq_body_accel_jerk-standarddev-y_axis  |   mean calculated on the standard deviation of the frequency body jerk from the accelerometer for the y axis|
| 57     |mean_freq_body_accel_jerk-standarddev-z_axis  |   mean calculated on the standard deviation of the frequency body jerk from the accelerometer for the z axis|
| 58    |mean_freq_body_accel_jerk-mean_freq-x_axis   |   mean calculated on the mean frequency body jerk from the accelerometer for the x axis|
| 59    |mean_freq_body_accel_jerk-mean_freq-y_axis   |   mean calculated on the mean frequency body jerk from the accelerometer for the y axis|
| 60    |mean_freq_body_accel_jerk-mean_freq-z_axis   |   mean calculated on the mean frequency body jerk from the accelerometer for the z axis|
| 61     |mean_freq_body_gyro-mean-x_axis   |   mean calculated on the mean frequency body from the gyroscope for the x axis|
| 62     |mean_freq_body_gyro-mean-y_axis   |   mean calculated on the mean frequency body from the gyroscope for the y axis|
| 63     |mean_freq_body_gyro-mean-z_axis   |   mean calculated on the mean frequency body from the gyroscope for the z axis|
| 64     |mean_freq_body_gyro-standarddev-x_axis   |   mean calculated on the standard deviation of the frequency body from the gyroscope for the x axis|
| 65     |mean_freq_body_gyro-standarddev-y_axis   |   mean calculated on the standard deviation of the frequency body from the gyroscope for the y axis|
| 66     |mean_freq_body_gyro-standarddev-z_axis   |   mean calculated on the standard deviation of the frequency body from the gyroscope for the z axis|
| 67     |mean_freq_body_gyro-mean_freq-x_axis   |   mean calculated on the mean frequency body from the gyroscope for the x axis|
| 68     |mean_freq_body_gyro-mean_freq-y_axis   |   mean calculated on the mean frequency body from the gyroscope for the y axis|
| 69     |mean_freq_body_gyro-mean_freq-z_axis   |   mean calculated on the mean frequency body from the gyroscope for the z axis|
| 70     |mean_freq_body_accel_magnitude-mean   |   mean calculated on the mean frequency body magnitude from the accelerometer|
| 71     |mean_freq_body_accel_magnitude-standarddev   |   mean calculated on the standard deviation of the frequency body magnitude from the accelerometer|
| 72     |mean_freq_body_accel_magnitude-mean_freq   |   mean calculated on the mean frequency for the body magnitude from the accelerometer|
| 73     |mean_freq_body_accel_jerk_magnitude-mean  |   mean calculated on the mean frequency body jerk from the accelerometer|
| 74     |mean_freq_body_accel_jerk_magnitude-standarddev  |   mean calculated on the standard deviation of the frequency body jerk magnitude from the accelerometer|
| 75     |mean_freq_body_accel_jerk_magnitude-mean_freq  |   mean calculated on the mean frequency body jerk magnitude from the accelerometer|
| 76     |mean_freq_body_gyro_magnitude-mean  |   mean calculated on the mean frequency body magnitude from the gyroscope|
| 77     |mean_freq_body_gyro_magnitude-standarddev  |   mean calculated on the standard deviation of the frequency body magnitude from the gyroscope|
| 78     |mean_freq_body_gyro_magnitude-mean_freq |   mean calculated on the mean frequency of the frequency body magnitude from the gyroscope|
| 79     |mean_freq_body_gyro_jerk_magnitude-mean |   mean calculated on the mean frequency body jerk magnitude from the gyroscope|
| 80     |mean_freq_body_gyro_jerk_magnitude-standarddev  |   mean calculated on the standard deviation of the frequency body jerk magnitude from the gyroscope|
| 81    |mean_freq_body_gyro_jerk_magnitude-mean_freq  |   mean calculated on the mean frequency of the frequency body jerk magnitude from the gyroscope|


                
        
