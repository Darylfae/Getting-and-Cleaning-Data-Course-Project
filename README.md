---
title: "README"
output: html_document
---
##Getting and Cleaning Data Course Project

One of the most exciting areas in all of data science right now is **wearable computing**. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The purpose of this project is to demonstrate one's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. An R script called **run_analysis.R** is created that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In this repository are the following files which contain the final output and the details on how to come up with it:

1. **README.md** - explanation on the scripts and files in this repository as well as a background on the goal of the project
2. **Codebook.md** - code book that describes the variables, the data, and each transformation performed to create the tidy data set
3. **run_analysis.R** - R script for performing the analysis and creating the tidy data set
4. **tidydata.txt** - tidy data set created from step 5 above

Follow the steps detailed in the Codebook to reproduce the outputs of the project.
