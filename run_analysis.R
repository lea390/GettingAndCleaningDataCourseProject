# Assignment: Getting and Cleaning Data Course Project

# get/set working directory
getwd()
setwd("./Documents/Coursera Courses/Data Science Specialization/Getting and Cleaning Data/Final Assignment/")

# read in the different files, give them headings and merge them into one common data set
data_labels = read.table("./UCI HAR Dataset/features.txt")
data_train = read.table("./UCI HAR Dataset/train/X_train.txt", col.names = data_labels$V2)
data_test = read.table("./UCI HAR Dataset/test/X_test.txt", col.names = data_labels$V2)
data_train_su = read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="subject")
data_test_su = read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="subject")
data_train_act = read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
data_test_act = read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
data_train = cbind(data_train_su, data_train_act, data_train)
data_test = cbind(data_test_su, data_test_act, data_test)
data_all = rbind(data_train, data_test)

# extract only the mean and std measures
columns_mean = grep("mean", data_labels$V2)
columns_std = grep("std", data_labels$V2)
columns = sort(c(columns_mean, columns_std)) + 2 # add the 2 columns for subject and activity to it
data_all = data_all[,c(1,2,columns)]

# use descriptive activity names
data_all$activity = as.factor(data_all$activity)
levels(data_all$activity) = c("walk","walkup","walkdown","sit","stand","lie")

# label the data with descriptive names
names(data_all) = tolower(names(data_all))
names(data_all) = gsub("\\.", "", names(data_all))

# create data set with the average of each variable for each activity and each subject
data_means_and_std = aggregate(data_all[,-(1:2)], list(data_all$subject, data_all$activity), mean)
names(data_means_and_std)[1:2] = c("subject", "activity")

# save the data set
write.table(data_means_and_std, "data_set_means.txt", row.name=FALSE)

# save a list of the measures
write.table(names(data_means_and_std)[-(1:2)], "data_set_means_colnames.txt")
