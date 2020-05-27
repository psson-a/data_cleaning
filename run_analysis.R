#run_analysis.R
#the raw data folder "UCI HAR Dataset" is expected to be in the working directory

library(dplyr) #required for group_by and summarize_all

#read dataset which has been split into two
data_train <- read.table("UCI HAR Dataset/train/X_train.txt")
label_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

data_test <- read.table("UCI HAR Dataset/test/X_test.txt")
label_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#merge train and test datasets to obtain original sample
combined_data <- rbind(data_train, data_test)
combined_label <- rbind(label_train, label_test)
combined_subject <- rbind(subject_train, subject_test)

#label columns with feature names
features <- read.table("UCI HAR Dataset/features.txt")
feature_list <- features$V2
colnames(combined_data) <- feature_list
colnames(combined_label) <-"activity"
colnames(combined_subject) <- "subject"

#extract only colnames with mean ('mean()') or stadard deviation ('std()')
colmask <- grepl("mean\\(\\)|std\\(\\)", colnames(combined_data))

#combine measurements with data on subject and activity number
combined <- cbind(combined_subject, combined_label, combined_data[,colmask])

#replace activity number with the activity they were associated with
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_list <- activities$V2
activity_list <- tolower((activity_list))
combined$activity <- as.factor(combined$activity)
levels(combined$activity) <- activity_list

#make column names more human readable

names <- colnames(combined)
names <- gsub("^t", "", names)
names <- gsub("^f", "frequency_domain_", names)
names <- gsub("(?:Body)?Body", "body_", names)
#names <- gsub("Body", "body_", names)
names <- gsub("Gravity", "gravity_", names)
names <- gsub("Acc", "acceleration_", names)
names <- gsub("Gyro", "gyroscope_", names)
names <- gsub("Mag", "magnitude_", names)
names <- gsub("Jerk", "jerk_", names)
names <- gsub("-X$", "_x-axis", names)
names <- gsub("-Y$", "_y-axis", names)
names <- gsub("-Z$", "_z-axis", names)
names <- gsub("(.*?)_?-std\\(\\)(.*)", "\\1\\2-std()", names)
names <- gsub("(.*?)_?-mean\\(\\)(.*)", "\\1\\2-mean()", names)
colnames(combined)<-names




#use dplyr functions to get the mean of every column for each subject and activity

combined <- tbl_df(combined)
#combined is the dataset for step 4 of the assignment

means_grouped <-   combined %>% 
                   group_by(subject, activity) %>% 
                   summarize_all(mean)

#means_grouped is the dataset for step 5 of the assignment                  
