## Getting and Cleaning Data Project
# The data linked to from the course website represent data collected 
# from the accelerometers from the Samsung Galaxy S smartphone.
# A full description is available at the site where the data was obtained:
#   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# Here are the data for the project:
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


#IIIIIIIIIIIIIIIIIIIIIIIIIIIIII
# Before you start, you need to change your directory here!
dir = "UCI HAR Dataset"

#################################
## you don't need to change the codes below
setwd(dir)

##########################
## step0: download data ##

fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp<-download.file(fileUrl,"UCI_HAR_Dataset.zip")
dateDownloaded <- date()
unzip("UCI_HAR_Dataset.zip")


#########################################################################
## step1: Merges the training and the test sets to create one data set.

# (1) test data sets

test_subject<-read.table(paste(dir, "test", "subject_test.txt", sep="/"))
test_X<-read.table(paste(dir, "test", "X_test.txt", sep="/"))
test_y<-read.table(paste(dir, "test", "y_test.txt", sep="/"))

# check dimention
dim(test_subject) #2947    1
dim(test_X) #2947    561
dim(test_y) #2947    1

# combine three datasets
test_dat <- cbind(test_subject,test_y,test_X)

# (2) training data sets

train_subject<-read.table(paste(dir, "train", "subject_train.txt", sep="/"))
train_X<-read.table(paste(dir, "train", "X_train.txt", sep="/"))
train_y<-read.table(paste(dir, "train", "y_train.txt", sep="/"))

# check dimention
dim(train_subject) #7352    1
dim(train_X) #7352    561
dim(train_y) #7352    1

# combine three datasets
train_dat<-cbind(train_subject,train_y,train_X)

# (3) combine test data and training data into one dataset
UCI_HAR_Dat_Step1 = rbind(test_dat, train_dat)
dim(UCI_HAR_Dat_Step1) #10299   563

# how many subjects?
length(unique(UCI_HAR_Dat_Step1[,1])) #there are 30 subjects 1,...,30

# how many activities?
length(unique(UCI_HAR_Dat_Step1[,2])) #there are 6 activities 1,...,6

# (4) add column names from "feature.txt" data
features = read.table(paste(dir, "features.txt", sep="/"))
file_names = c("Subject", "Activity", levels(features$V2))

names(UCI_HAR_Dat_Step1) = file_names

#########################################################
## step2: Extracts only the measurements on the mean  ###
##        and standard deviation for each measurement.###

## Column names that contains exactly "mean()", but not included "meanFreq()"
col_mean<-grep("mean()",file_names,fixed=TRUE) 
## Column names that contains exactly "std()"
col_std <-grep("std()",file_names, fixed=TRUE) 

col_MeanStd = sort(c(col_mean, col_std))

UCI_HAR_Dat_Step2<-UCI_HAR_Dat_Step1[ ,c(1,2,col_MeanStd)]



##############################
## step3: Add activity labels ##
activity_Labels <- read.table(paste(dir, "activity_labels.txt", sep="/"))
names(activity_Labels) = c("Activity", "Label")
# remove the "_" between words in label column
activity_Labels$Label = sub("_", " ", activity_Labels$Label)

UCI_HAR_Dat_Step3 <- UCI_HAR_Dat_Step2
UCI_HAR_Dat_Step3$Activity <- factor(UCI_HAR_Dat_Step3$Activity, 
                                    levels=activity_Labels$Activity, 
                                    labels=activity_Labels$Label)

#############################################
## step4: Appropriately labels the data set## 
##       with descriptive variable names.  ##

# rename the column names according to the following rules

# * the column names should not include "-" or "()",
#   because R interprets the "-" as an operator, "()" as a function call
#   Therefore,
#   * -> change the "-" to "_" and remove the "()" 
UCI_HAR_Dat_Step4 <- UCI_HAR_Dat_Step3

names(UCI_HAR_Dat_Step4) <- sub("-mean\\(\\)", "_mean", names(UCI_HAR_Dat_Step4))
names(UCI_HAR_Dat_Step4) <- sub("-std\\(\\)", "_std", names(UCI_HAR_Dat_Step4))
names(UCI_HAR_Dat_Step4) <- sub("-([A-Z])", "_\\1", names(UCI_HAR_Dat_Step4))

tidy_dat1 <- UCI_HAR_Dat_Step4
# save the cleaned data sets to work directory as "Tidy_UCI_HAR_Dataset_1.txt"
write.table(tidy_dat1,"Tidy_UCI_HAR_Dataset_1.txt",
            sep="\t", row.names=FALSE)

######################################################################
## step5: Creates a second, independent tidy data set with          ##
## the average of each variable for each activity and each subject. ## 


tidy_dat2 <- aggregate(tidy_dat1[,3:ncol(tidy_dat1)],
                       by=list(subject=tidy_dat1$Subject,
                               activity=tidy_dat1$Activity),
                       FUN=mean)
write.table(tidy_dat2,"Tidy_UCI_HAR_Dataset_2.txt",
            sep="\t", row.names=FALSE)


########################## FINISH PROJECT #############################
