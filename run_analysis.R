#run_analysis.R

#read dataset which has been randomly split into two
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")

#merge datasets to obtain original data

combined <- rbind(X_train, X_test)

#label columns with feature names
features <- read.table("UCI HAR Dataset/features.txt")

#label rows with the activity they were associated with
activities <- read.table("UCI HAR Dataset/activity_labels.txt")