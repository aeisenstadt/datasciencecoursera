---
title: "CodeBook.md"
author: "Ari Eisenstadt"
date: "8/23/2017"
output: html_document
---

## R Markdown
The data in the tidySamsungData.txt file are edited data that have been cleaned and combined. The original sources of the data are the test and train sets in the UCI HAR dataset, see the original CodeBook below.

The variables in the tidy data set, tidySamsungData.txt, are as follows:

"Activity" - the given activity in which the subject was engaged at the time
of measurement. Can be 
"Subject_Number" - numerical identifier of subject. Values: 1-30                   "Linear Acceleration-mean()-X" - mean linear acceleration in the x direction
"Linear Acceleration-mean()-Y" - mean linear acceleration in the y direction       "Linear Acceleration-mean()-Z" - mean linear acceleration in the z direction
"Gravitational Acceleration-mean()-X" - mean gravitational acceleration in the x direction            
"Gravitational Acceleration-mean()-Y" - mean gravitational acceleration in the y direction             
"Gravitational Acceleration-mean()-Z" - mean gravitational acceleration in the z direction             
"Linear Jerk-mean()-X" - mean linear jerk in the x direction    
"Linear Jerk-mean()-Y" - mean linear jerk in the y direction                       
"Linear Jerk-mean()-Z" - mean linear jerk in the z direction                       
"Angular Velocity-mean()-X" - mean angular velocity in the x direction    
"Angular Velocity-mean()-Y" - mean angular velocity in the y direction          
"Angular Velocity-mean()-Z" - mean angular velocity in the z direction             
"Angular Jerk-mean()-X" - mean angular jerk in the x direction                     
"Angular Jerk-mean()-Y" - mean angular jerk in the y direction                     
"Angular Jerk-mean()-Z" - mean angular jerk in the z direction                     
"Linear Acceleration Magnitude-mean()" - mean net linear acceleration           
"Gravitational Acceleration Magnitude-mean()" - mean net gravitational acceleration "Linear Jerk Magnitude-mean()" - mean net linear jerk                    
"Angular Velocity Magnitude-mean()" - mean net angular velocity               
"Angular Jerk Magnitude-mean()" - mean net angular jerk                   
"Fourier Linear Acceleration-mean()-X" - mean Fourier Transformed linear acceleration in the x direction            
"Fourier Linear Acceleration-mean()-Y" - mean Fourier Transformed linear acceleration in the y direction            
"Fourier Linear Acceleration-mean()-Z" - mean Fourier Transformed linear acceleration in the z direction            
"Fourier Linear Acceleration-meanFreq()-X" - mean Fourier Transformed linear acceleration in the x direction in the frequency domain        
"Fourier Linear Acceleration-meanFreq()-Y" - mean Fourier Transformed linear acceleration in the y direction in the frequency domain        
"Fourier Linear Acceleration-meanFreq()-Z" - mean Fourier Transformed linear acceleration in the z direction in the frequency domain        
"Fourier Linear Jerk-mean()-X" - mean Fourier Transformed linear jerk in the x direction                    
"Fourier Linear Jerk-mean()-Y" - mean Fourier Transformed linear jerk in the y direction                    
"Fourier Linear Jerk-mean()-Z" - mean Fourier Transformed linear jerk in the z direction                    
"Fourier Linear Jerk-meanFreq()-X" - mean Fourier Transformed linear jerk in the x direction in the frequency domain                
"Fourier Linear Jerk-meanFreq()-Y" - mean Fourier Transformed linear jerk in the y direction in the frequency domain                
"Fourier Linear Jerk-meanFreq()-Z" - mean Fourier Transformed linear jerk in the z direction in the frequency domain                
"Fourier Angular Velocity-mean()-X" - mean Fourier Transformed angular velocity in the x direction               
"Fourier Angular Velocity-mean()-Y" - mean Fourier Transformed angular velocity in the y direction               
"Fourier Angular Velocity-mean()-Z" - mean Fourier Transformed angular velocity in the z direction               
"Fourier Angular Velocity-meanFreq()-X" - mean Fourier Transformed angular velocity in the x direction in the frequency domain           
"Fourier Angular Velocity-meanFreq()-Y" - mean Fourier Transformed angular velocity in the y direction in the frequency domain           
"Fourier Angular Velocity-meanFreq()-Z" - mean Fourier Transformed angular velocity in the z direction in the frequency domain           
"Fourier Linear Acceleration Magnitude-mean()" - mean net Fourier Transformed linear acceleration  
"Fourier Linear Acceleration Magnitude-meanFreq()" - mean net Fourier Transformed linear acceleration in the frequency domain
"fBodyBodyAccJerkMag-mean()"                      
"fBodyBodyAccJerkMag-meanFreq()"                  
"fBodyBodyGyroMag-mean()"                         
"fBodyBodyGyroMag-meanFreq()"                     
"fBodyBodyGyroJerkMag-mean()"                     
"fBodyBodyGyroJerkMag-meanFreq()"                 
"Linear Acceleration-stddev()-X" - standard deviation of the linear acceleration in the x direction                  
"Linear Acceleration-stddev()-Y" - standard deviation of the linear acceleration in the y direction                  
"Linear Acceleration-stddev()-Z" - standard deviation of the linear acceleration in the z direction                  
"Gravitational Acceleration-stddev()-X" - standard deviation of the gravitational acceleration in the x direction           
"Gravitational Acceleration-stddev()-Y" - standard deviation of the gravitational acceleration in the y direction           
"Gravitational Acceleration-stddev()-Z" - standard deviation of the gravitational acceleration in the z direction           
"Linear Jerk-stddev()-X" - standard deviation of the linear jerk in the x direction
"Linear Jerk-stddev()-Y" - standard deviation of the linear jerk in the y direction
"Linear Jerk-stddev()-Z" - standard deviation of the linear jerk in the z direction
"Angular Velocity-stddev()-X" - standard deviation of the angular velocity in the x direction                               
"Angular Velocity-stddev()-Y" - standard deviation of the angular velocity in the y direction                                        
"Angular Velocity-stddev()-Z" - standard deviation of the angular velocity in the z direction                                        
"Angular Jerk-stddev()-X" - standard deviation of the angular jerk in the x direction                                            
"Angular Jerk-stddev()-Y" - standard deviation of the angular jerk in the y direction                                             
"Angular Jerk-stddev()-Z" - standard deviation of the angular jerk in the z direction                                             
"Linear Acceleration Magnitude-stddev()" - standard deviation of the net linear acceleration                               
"Gravitational Acceleration Magnitude-stddev()" - standard deviation of the net gravitational acceleration   
"Linear Jerk Magnitude-stddev()" - standard deviation of the net linear jerk   
"Angular Velocity Magnitude-stddev()" - standard deviation of the net angular velocity             
"Angular Jerk Magnitude-stddev()" - standard deviation of the net angular jerk 
"Fourier Linear Acceleration-stddev()-X" - standard deviation of the Fourier Transformed linear acceleration in the x direction          
"Fourier Linear Acceleration-stddev()-Y" - standard deviation of the Fourier Transformed linear acceleration in the y direction          
"Fourier Linear Acceleration-stddev()-Z" - standard deviation of the Fourier Transformed linear acceleration in the z direction          
"Fourier Linear Jerk-stddev()-X" - standard deviation of the Fourier Transformed linear acceleration in the x direction                  
"Fourier Linear Jerk-stddev()-Y" - standard deviation of the Fourier Transformed linear acceleration in the y direction                  
"Fourier Linear Jerk-stddev()-Z" - standard deviation of the Fourier Transformed linear acceleration in the z direction                  
"Fourier Angular Velocity-stddev()-X" - standard deviation of the Fourier Transformed angular velocity  in the x direction             
"Fourier Angular Velocity-stddev()-Y" - standard deviation of the Fourier Transformed angular velocity  in the y direction             
"Fourier Angular Velocity-stddev()-Z" - standard deviation of the Fourier Transformed angular velocity  in the z direction             
"Fourier Linear Acceleration Magnitude-stddev()" - standard deviation of the Fourier Transformed net linear acceleration  
"fBodyBodyAccJerkMag-stddev()"                    
"fBodyBodyGyroMag-stddev()"                       
"fBodyBodyGyroJerkMag-stddev()"   




The original CodeBook is included below for reference:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
