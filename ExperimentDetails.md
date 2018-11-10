The below content was extracted from documentation of the Human Activity Recognition Using Smartphones Dataset.  

Credits  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws

# Experiment Details

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters, then sampled in fixed-width sliding 
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed 
to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features 
was obtained by calculating variables from the time and frequency domain. 
[View Feature Details](https://github.com/nayehi/TidyData-Project/blob/master/Features). 
Features were normalized and bounded within [-1,1]. Each feature vector is a row in the data file.

## Each record consists of:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Activity label.
- An identifier of the subject who carried out the experiment.
