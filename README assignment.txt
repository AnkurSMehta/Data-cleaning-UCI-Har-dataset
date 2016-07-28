==================================================================
Getting and Cleaning Data course on Coursera
Assignment README
Student: Ankur Mehta

based on

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

Data taken from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Introduction:

This data represents experiments carried out with a group of 30 Subjects, each performing 6 activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Additionally, the data has been processed to develop 561 variables for each record and has been partitioned into 2 separate datasets - the training data and the test data.

Assignment:
The assignment requires the creation of a tidy dataset that combines the test and training dataset, generate the mean and standard deviations for each of the 561 variables and generate another tidy dataset with the means of each of the 561 variables grouped by subject and activity.
Additionally, the assignment requires descriptive activity names for each record and descriptive variable names for each variable.

Procedure:
Using read.table(), the test data, training data, test and training activity labels, subject labels and features (561 features in total) were each read in and assigned to data frames.
Then the names of the test and training data frames were assigned to the values in the features vector
Using a match() function, the activity names were added next to the activity numbers (the merge() function sorted the data and so was ineffective)
Using a cbind() function, the subject and activities were inserted each into the test and training data respectively
Then using a rbind() function, the test and training data were merged
The means and standard deviations of each of the 561 variables was taken and assigned to numeric vectors.
Finally a groupmean was generated for each subject and activity combination and written to a text file using write.table(). Headers were included.
Since there were 30 subjects and 6 activities each, a total of 30*6=180 records exist in the groupmean text file.

The file included with this assignment is called
Groupmean_by_Subject_Activity.txt
this file contains the 180 records of the mean of each of the 561 variables.

The original dataset includes the following files:
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

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
