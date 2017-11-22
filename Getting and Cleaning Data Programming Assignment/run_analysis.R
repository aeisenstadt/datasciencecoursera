## A script designed to 
##1. Merge the training and the test sets to create one data set.
##2. Extract only the measurements on the mean and standard deviation 
##   for each measurement.
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately label the data set with descriptive variable names.
##5. From the data set in step 4, create a second, independent tidy data set 
##   with the average of each variable for each activity and each subject.

## Set relevant packages
library(readr)
library(dplyr)


## INSERT YOUR FILE PATH HERE
pathToFile <- c("XXXXXXXXXXXXXXX")

## Load files
subjectTest <- read_table(paste(pathToFile, "/test/subject_test.txt", sep="")
                          , col_names = FALSE)
valuesTest <- read_table(paste(pathToFile, "/test/X_test.txt", sep=""),
                         col_names = FALSE)
activitiesTest <- read_table(paste(pathToFile, "/test/y_test.txt", sep=""),
                             col_names = FALSE)
subjectTrain <- read_table(paste(pathToFile, "/train/subject_train.txt", 
                                 sep=""), col_names = FALSE)
valuesTrain <- read_table(paste(pathToFile, "/train/X_train.txt", sep=""),
                          col_names = FALSE)
activitiesTrain <- read_table(paste(pathToFile, "/train/y_train.txt", sep=""),
                              col_names = FALSE)
activityLabels <- read_table(paste(pathToFile, "/activity_labels.txt", sep=""),
                               col_names = FALSE)
rawVariableNames <- read_table(paste(pathToFile, "/features.txt", sep=""),
                               col_names = FALSE)

## Find variable names
splitNames <- strsplit(rawVariableNames[[1]], ". ")
secondElement <- function(x){x[2]}
cleanVariableNames <- sapply(splitNames, secondElement)

## Apply variable names
colnames(valuesTest) <- cleanVariableNames
colnames(subjectTest) <- c("Subject Number")
colnames(activitiesTest) <- c("Activity")
colnames(valuesTrain) <- cleanVariableNames
colnames(subjectTrain) <- c("Subject Number")
colnames(activitiesTrain) <- c("Activity")

## Merge dataframes
valuesTest <- cbind(subjectTest, activitiesTest, valuesTest)
valuesTrain <- cbind(subjectTrain, activitiesTrain, valuesTrain)
values <- rbind(valuesTest, valuesTrain)

## Extract mean and standard deviation
tidyValues <- cbind(values[,1:2], values[,grep("mean", names(values))],
                    values[,grep("std", names(values))])

## Fix Activity Names
tidyValues["Activity"] <- activityLabels[ match(tidyValues[['Activity']], 
                                                activityLabels[['X1']] ) 
                                          , 'X2']

## Replace Variable Names
colnames(tidyValues) <- sub("tBodyAcc-","Linear Acceleration-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyAccMag-","Linear Acceleration Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyAccJerk-","Linear Jerk-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyAccJerkMag-","Linear Jerk Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("tGravityAcc-","Gravitational Acceleration-",names(tidyValues))
colnames(tidyValues) <- sub("tGravityAccMag-","Gravitational Acceleration Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyGyro-","Angular Velocity-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyGyroMag-","Angular Velocity Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyGyroJerk-","Angular Jerk-",names(tidyValues))
colnames(tidyValues) <- sub("tBodyGyroJerkMag-","Angular Jerk Magnitude-",names(tidyValues))

colnames(tidyValues) <- sub("fBodyAcc-","Fourier Linear Acceleration-",names(tidyValues))
colnames(tidyValues) <- sub("fBodyAccMag-","Fourier Linear Acceleration Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("fBodyAccJerk-","Fourier Linear Jerk-",names(tidyValues))
colnames(tidyValues) <- sub("fBodyAccJerkMag-","Fourier Linear Jerk Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("fBodyGyro-","Fourier Angular Velocity-",names(tidyValues))
colnames(tidyValues) <- sub("fBodyGyroMag-","Fourier Angular Velocity Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("fBodyGyroJerkMag-","Fourier Angular Jerk Magnitude-",names(tidyValues))
colnames(tidyValues) <- sub("std", "stddev", names(tidyValues))

## Produce Tidy Dataset
tidyData <-aggregate(tidyValues[,3:81], 
                    by=list(Activity = tidyValues$Activity, 
                            Subject_Number = tidyValues$`Subject Number`), 
                    FUN=mean, na.rm=TRUE)
