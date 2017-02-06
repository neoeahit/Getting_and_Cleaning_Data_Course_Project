##Merges the training and the test sets to create one data set

# Running the script at the same location as "UCI HAR Dataset"

x_train<- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
features_name<-read.table("UCI HAR Dataset/features.txt",header=FALSE)
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE)

subjects<- rbind(subject_train, subject_test)
y<- rbind(y_train, y_test)
x<- rbind(x_train, x_test)

names(subjects) <-c("Subject")
names(y) <-c("Activity")
names(x) <- features_name[,2]
data<- cbind(subjects, y,x)

## Extracts only the measurements on the mean and standard deviation for each measurement.
 # Learnt \ does not work, note to self use \\ over \
sampled_index <- grep("-mean\\(\\)|-std\\(\\)", features_name[,2], ignore.case=TRUE)
x<-x[,sampled_index]
## Uses descriptive activity names to name the activities in the data set
## (names are already descriptive, not sure what more to change in names)
activities[, 2] = as.character(activities[, 2])
y[,1] <- activities[y[,1],2]

## Appropriately labels the data set with descriptive variable names.
clean_data_with_descriptive_name<- cbind(subjects, y,x)
names(clean_data_with_descriptive_name)<-gsub("^f", "Frequency", names(clean_data_with_descriptive_name))
names(clean_data_with_descriptive_name)<-gsub("^t", "Time", names(clean_data_with_descriptive_name))

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
sampled_x <- clean_data_with_descriptive_name[, 3:dim(clean_data_with_descriptive_name)[2]]
aggregated_data <- aggregate(sampled_x, by=list(clean_data_with_descriptive_name$Subject, clean_data_with_descriptive_name$Activity), FUN=mean)
names(aggregated_data)[1] <- "Subject"
names(aggregated_data)[2] <- "Activity"

#write.table is not included in the script but incase it was and i missed it, it was supposed to be used as
#write.table(aggregated_data, "name_of_the_file.txt", row.name=FALSE)


