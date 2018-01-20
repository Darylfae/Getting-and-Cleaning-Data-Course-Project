##Steps:
##0. Get and understand the data.
##Download the file and put it in the data folder.
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
##Look at the files provided, including the README and features_info files. Understand how the data is structured and select which files are needed.
##Read data from the selected files. The files in the Inertial Signals folders are not included.
##a. Values of the Subject variable
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
##b. Levels of the Activity variable
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)
##c. Values of the Activity variable
activitytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
activitytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
##d. Names of the Features variable
featuresnames <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE)
##e. Values of the Features variable
featurestrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
featurestest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)

##1. Merge the training and the test data sets to create one data set.
##Combine the two data sets by rows.
subject <- rbind(subjecttrain, subjecttest)
activity <- rbind(activitytrain, activitytest)
features <- rbind(featurestrain, featurestest)
##Set the names of the variables.
colnames(subject) <- "Subject"
colnames(activity) <- "Activity"
colnames(features) <- t(featuresnames[2])
##Merge all the columns and create a complete data frame.
completedata <- cbind(subject,activity,features)
##Check the dimension of the complete data.
dim(completedata)

##2. Extract only the measurements on the mean and standard deviation for each measurement.
##Search for matches on the column names with either mean or standard deviation.
columnswithmeanstd <- grep(".*Mean.*|.*Std.*", names(completedata), ignore.case=TRUE)
##Add the columns of Subject and Activity.
columnsofmeanstd <- c(1, 2, columnswithmeanstd)
##Subset the data frame using the selected columns.
extracteddata <- completedata[,columnsofmeanstd]
##Check the dimension and structure of the data set.
dim(extracteddata)
str(extracteddata)

##3. Use descriptive activity names to name the activities in the data set.
##Assign the activity labels to the activity names as character.
extracteddata$Activity <- as.character(extracteddata$Activity)
extracteddata$Activity[extracteddata$Activity == 1] <- "WALKING"
extracteddata$Activity[extracteddata$Activity == 2] <- "WALKING_UPSTAIRS"
extracteddata$Activity[extracteddata$Activity == 3] <- "WALKING_DOWNSTAIRS"
extracteddata$Activity[extracteddata$Activity == 4] <- "SITTING"
extracteddata$Activity[extracteddata$Activity == 5] <- "STANDING"
extracteddata$Activity[extracteddata$Activity == 6] <- "LAYING"
##Factor the Activity variable.
extracteddata$Activity <- as.factor(extracteddata$Activity)
##Check the data.
head(extracteddata$Activity,20)

##4. Appropriately label the data set with descriptive variable names.
##Rename the variables by using complete terms for abbreviations or by changing the first letter to upper case format.
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

##5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
##Install and load the plyr package.
install.packages("plyr")
library(plyr)
##Create the tidy data set with the average of each variable for each activity and each subject.
tidydata <- aggregate(. ~Subject + Activity, extracteddata, mean)
##Arrange the order of the values by the Subject and Activity.
tidydata <- tidydata[order(tidydata$Subject, tidydata$Activity),]
##Created a txt file with write.table() using row.names=FALSE.
write.table(tidydata, file = "tidydata.txt", row.names = FALSE)
tidydata

##6. Additional Steps:
##Check the structure of the tidy data set.
str(tidydata)
##View the summary of the tidy data set.
summary(tidydata)
