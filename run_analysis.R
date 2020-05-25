#run_analysis.R

#read dataset which has been split into two
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
label_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
label_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#merge datasets to obtain original data

combined_X <- rbind(X_train, X_test)
combined_label <- rbind(label_train, label_test)
combined_subject <- rbind(subject_train, subject_test)

#label columns with feature names?sapply
features <- read.table("UCI HAR Dataset/features.txt")
feature_list <- features$V2
colnames(combined_X) <- feature_list
colnames(combined_label) <-"activity"
colnames(combined_subject) <- "subject"

#extract only colnames with mean ('mean()') or stadard deviation ('std()')
colmask <- grepl("mean\\(\\)|std\\(\\)", colnames(combined_X))

#combine measurements with info on subject and activity
combined <- cbind(combined_subject, combined_label, combined_X[,colmask])

#label rows with the activity they were associated with
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_list <- activities$V2
activity_list <- tolower((activity_list))
combined$activity <- as.factor(combined$activity)
levels(combined$activity) <- activity_list

#apply colMean to each subject and activity combination
t <- split(combined, list(combined$subject, combined$activity))
lapply (t, function(x) colMeans(x[,c(-1,-2)]))