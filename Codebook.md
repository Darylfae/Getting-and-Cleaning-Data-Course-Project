---
title: "Codebook for Getting and Cleaning Data Course Project"
output: html_document
---
##Tidy Data
###Description:
Data set with the mean values of each mean or standard deviation variable for each activity and subject

**Source:**
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Description:**
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Variables:
**Subject:**
ID of the 30 volunteers who carried out the experiment
Range: 1:30

**Activity:**
Six activities performed by each volunteer wearing a smartphone (Samsung Galaxy S II) on the waist

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

**Features:**
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
	
* TimeBodyAccelerometer-XYZ
* TimeGravityAccelerometer-XYZ
* TimeBodyAccelerometerJerk-XYZ
* TimeBodyGyroscope-XYZ
* TimeBodyGyroscopeJerk-XYZ
* TimeBodyAccelerometerMagnitude
* TimeGravityAccelerometerMagnitude
* TimeBodyAccelerometerJerkMagnitude
* TimeBodyGyroscopeMagnitude
* TimeBodyGyroscopeJerkMagnitude
* FrequencyBodyAccelerometer-XYZ
* FrequencyBodyAccelerometerJerk-XYZ
* FrequencyBodyGyroscope-XYZ
* FrequencyBodyAccelerometerMagnitude
* FrequencyBodyAccelerometerJerkMagnitude
* FrequencyBodyGyroscopeMagnitude
* FrequencyBodyGyroscopeJerkMagnitude
	
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
	
* GravityMean
* TimeBodyAccelerometerMean
* TimeBodyAccelerometerJerkMean
* TimeBodyGyroscopeMean
* TimeBodyGyroscopeJerkMean

The set of variables that were estimated from these signals are: 
	
a. **mean()**: Mean value
b. **std()**: Standard deviation

**Units:**
Features are normalized and bounded within [-1,1].
	
**Features:**
86 variables for the Mean and Standard deviation

1. TimeBodyAccelerometerMean()-X
2. TimeBodyAccelerometerMean()-Y
3. TimeBodyAccelerometerMean()-Z
4. TimeBodyAccelerometerSTD()-X
5. TimeBodyAccelerometerSTD()-Y
6. TimeBodyAccelerometerSTD()-Z
7. TimeGravityAccelerometerMean()-X
8. TimeGravityAccelerometerMean()-Y
9. TimeGravityAccelerometerMean()-Z
10. TimeGravityAccelerometerSTD()-X
11. TimeGravityAccelerometerSTD()-Y
12. TimeGravityAccelerometerSTD()-Z
13. TimeBodyAccelerometerJerkMean()-X
14. TimeBodyAccelerometerJerkMean()-Y
15. TimeBodyAccelerometerJerkMean()-Z
16. TimeBodyAccelerometerJerkSTD()-X
17. TimeBodyAccelerometerJerkSTD()-Y
18. TimeBodyAccelerometerJerkSTD()-Z
19. TimeBodyGyroscopeMean()-X
20. TimeBodyGyroscopeMean()-Y
21. TimeBodyGyroscopeMean()-Z
22. TimeBodyGyroscopeSTD()-X
23. TimeBodyGyroscopeSTD()-Y
24. TimeBodyGyroscopeSTD()-Z
25. TimeBodyGyroscopeJerkMean()-X
26. TimeBodyGyroscopeJerkMean()-Y
27. TimeBodyGyroscopeJerkMean()-Z
28. TimeBodyGyroscopeJerkSTD()-X
29. TimeBodyGyroscopeJerkSTD()-Y
30. TimeBodyGyroscopeJerkSTD()-Z
31. TimeBodyAccelerometerMagnitudeMean()
32. TimeBodyAccelerometerMagnitudeSTD()
33. TimeGravityAccelerometerMagnitudeMean()
34. TimeGravityAccelerometerMagnitudeSTD()
35. TimeBodyAccelerometerJerkMagnitudeMean()
36. TimeBodyAccelerometerJerkMagnitudeSTD()
37. TimeBodyGyroscopeMagnitudeMean()
38. TimeBodyGyroscopeMagnitudeSTD()
39. TimeBodyGyroscopeJerkMagnitudeMean()
40. TimeBodyGyroscopeJerkMagnitudeSTD()
41. FrequencyBodyAccelerometerMean()-X
42. FrequencyBodyAccelerometerMean()-Y
43. FrequencyBodyAccelerometerMean()-Z
44. FrequencyBodyAccelerometerSTD()-X
45. FrequencyBodyAccelerometerSTD()-Y
46. FrequencyBodyAccelerometerSTD()-Z
47. FrequencyBodyAccelerometerMeanFreq()-X
48. FrequencyBodyAccelerometerMeanFreq()-Y
49. FrequencyBodyAccelerometerMeanFreq()-Z
50. FrequencyBodyAccelerometerJerkMean()-X
51. FrequencyBodyAccelerometerJerkMean()-Y
52. FrequencyBodyAccelerometerJerkMean()-Z
53. FrequencyBodyAccelerometerJerkSTD()-X
54. FrequencyBodyAccelerometerJerkSTD()-Y
55. FrequencyBodyAccelerometerJerkSTD()-Z
56. FrequencyBodyAccelerometerJerkMeanFreq()-X
57. FrequencyBodyAccelerometerJerkMeanFreq()-Y
58. FrequencyBodyAccelerometerJerkMeanFreq()-Z
59. FrequencyBodyGyroscopeMean()-X
60. FrequencyBodyGyroscopeMean()-Y
61. FrequencyBodyGyroscopeMean()-Z
62. FrequencyBodyGyroscopeSTD()-X
63. FrequencyBodyGyroscopeSTD()-Y
64. FrequencyBodyGyroscopeSTD()-Z
65. FrequencyBodyGyroscopeMeanFreq()-X
66. FrequencyBodyGyroscopeMeanFreq()-Y
67. FrequencyBodyGyroscopeMeanFreq()-Z
68. FrequencyBodyAccelerometerMagnitudeMean()
69. FrequencyBodyAccelerometerMagnitudeSTD()
70. FrequencyBodyAccelerometerMagnitudeMeanFreq()
71. FrequencyBodyAccelerometerJerkMagnitudeMean()
72. FrequencyBodyAccelerometerJerkMagnitudeSTD()
73. FrequencyBodyAccelerometerJerkMagnitudeMeanFreq():
74. FrequencyBodyGyroscopeMagnitudeMean()
75. FrequencyBodyGyroscopeMagnitudeSTD()
76. FrequencyBodyGyroscopeMagnitudeMeanFreq()
77. FrequencyBodyGyroscopeJerkMagnitudeMean()
78. FrequencyBodyGyroscopeJerkMagnitudeSTD()
79. FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()
80. Angle(TimeBodyAccelerometerMean,Gravity)
81. Angle(TimeBodyAccelerometerJerkMean),GravityMean):
82. Angle(TimeBodyGyroscopeMean,GravityMean)
83. Angle(TimeBodyGyroscopeJerkMean,GravityMean)
84. Angle(X,GravityMean)
85. Angle(Y,GravityMean)
86. Angle(Z,GravityMean)
	
###Steps to create the tidy data:

**0. Get the data and understand it.**

Download the file and put it in the data folder.
```
	if(!file.exists("./data")){dir.create("./data")}
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	download.file(fileUrl,destfile="./data/Dataset.zip")
	unzip(zipfile="./data/Dataset.zip",exdir="./data")
```

Look at the files provided, including the README and features_info files. Understand how the data is structured and select which files are needed.
Read data from the selected files. The files in the Inertial Signals folders are not included.

a. Values of the Subject variable:
```
	subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
	subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
```
b. Levels of the Activity variable:
```
	activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)
```
c. Values of the Activity variable:
```
	activitytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
	activitytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
```
d. Names of the Features variable:
```
	featuresnames <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE)
```
e. Values of the Features variable:
```
	featurestrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
	featurestest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
```

**1. Merge the training and the test data sets to create one data set.**

Combine the two data sets by rows.
```
	subject <- rbind(subjecttrain, subjecttest)
	activity <- rbind(activitytrain, activitytest)
	features <- rbind(featurestrain, featurestest)
```
Set the names of the variables.
```
	colnames(subject) <- "Subject"
	colnames(activity) <- "Activity"
	colnames(features) <- t(featuresnames[2])
```
Merge all the columns and create a complete data frame.
```
	completedata <- cbind(subject, activity, features)
```
Check the dimension of the complete data.
```
	dim(completedata)
```

**2. Extract only the measurements on the mean and standard deviation for each measurement.**

Search for matches on the column names with either mean or standard deviation.
```	
	columnswithmeanstd <- grep(".*Mean.*|.*Std.*", names(completedata), ignore.case=TRUE)
```
Add the columns of Subject and Activity.
```
	columnsofmeanstd <- c(1, 2, columnswithmeanstd)
```
Subset the data frame using the selected columns.
```
	extracteddata <- completedata[,columnsofmeanstd]
```
Check the dimension and structure of the data set.
```
	dim(extracteddata)
	str(extracteddata)
```

**3. Use descriptive activity names to name the activities in the data set.**

Assign the activity labels to the activity names as character.
```
	extracteddata$Activity <- as.character(extracteddata$Activity)
	extracteddata$Activity[extracteddata$Activity == 1] <- "WALKING"
	extracteddata$Activity[extracteddata$Activity == 2] <- "WALKING_UPSTAIRS"
	extracteddata$Activity[extracteddata$Activity == 3] <- "WALKING_DOWNSTAIRS"
	extracteddata$Activity[extracteddata$Activity == 4] <- "SITTING"
	extracteddata$Activity[extracteddata$Activity == 5] <- "STANDING"
	extracteddata$Activity[extracteddata$Activity == 6] <- "LAYING"
```
Factor the Activity variable.
```
	extracteddata$Activity <- as.factor(extracteddata$Activity)
```
Check the data.
```
	head(extracteddata$Activity,20)
```

**4. Appropriately label the data set with descriptive variable names.**

Rename the variables by using complete terms for abbreviations or by changing the first letter to upper case format.
```
	names(extracteddata) <- gsub("Acc", "Accelerometer", names(extracteddata))
	names(extracteddata) <- gsub("Gyro", "Gyroscope", names(extracteddata))
	names(extracteddata) <- gsub("BodyBody", "Body", names(extracteddata))
	names(extracteddata) <- gsub("Mag", "Magnitude", names(extracteddata))
	names(extracteddata) <- gsub("^t", "Time", names(extracteddata))
	names(extracteddata) <- gsub("^f", "Frequency", names(extracteddata))
	names(extracteddata) <- gsub("tBody", "TimeBody", names(extracteddata))
	names(extracteddata) <- gsub("-mean()", "Mean", names(extracteddata), ignore.case = TRUE)
	names(extracteddata) <- gsub("-std()", "STD", names(extracteddata), ignore.case = TRUE)
	names(extracteddata) <- gsub("-freq()", "Frequency", names(extracteddata), ignore.case = TRUE)
	names(extracteddata) <- gsub("angle", "Angle", names(extracteddata))
	names(extracteddata) <- gsub("gravity", "Gravity", names(extracteddata))
```

**5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.**

Install and load the plyr package.
```
	install.packages("plyr")
	library(plyr)
```
Create the tidy data set with the average of each variable for each activity and each subject.
```
	tidydata <- aggregate(. ~Subject + Activity, extracteddata, mean)
```
Arrange the order of the values by the Subject and Activity.
```
	tidydata <- tidydata[order(tidydata$Subject, tidydata$Activity),]
```
Created a txt file with write.table() using row.names=FALSE.
```
	write.table(tidydata, file = "tidydata.txt", row.names = FALSE)
	tidydata
```

**6. Check the tidy data set.**

Check the structure of the tidy data set.
```
	str(tidydata)
```
View the summary of the tidy data set.
```
	summary(tidydata)
```
