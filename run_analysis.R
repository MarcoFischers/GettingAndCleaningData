##################################################
#
# R-script for building a tidy dataset
# required input files:
#   features.txt 		     List of all features.
#   activity_labels.txt      Links the class labels with their activity name.
#   train/X_train.txt 		 Training set.
#   train/y_train.txt  		 Training labels.
#   train/subject_train.txt  Subject who performed the activity. 
#   test/X_test.txt  		 Test set.
#   test/y_test.txt 		 Test labels.
#   train/subject_train.txt  Subject who performed the activity.
#
# resulting output file:
#   tidy_data.txt
#
##################################################

# load required package
library(dplyr)


# read test data ------------------------------------------
# read feature variables
X.test<-read.table("test/X_test.txt")

# read activity labels
y.test<-read.table("test/y_test.txt")
names(y.test) <- "activity"

# read subjects
s.test<-read.table("test/subject_test.txt")
names(s.test) <- "subject"

# merge features and labels
X.y.s.test<-cbind(X.test, y.test, s.test)


# read train data -------------------------------------
# read feature variables
X.train<-read.table("train/X_train.txt")

# read activity labels
y.train<-read.table("train/y_train.txt")
names(y.train) <- "activity"

# read subjects
s.train<-read.table("train/subject_train.txt")
names(s.train) <- "subject"

# merge features and labels
X.y.s.train<-cbind(X.train, y.train, s.train)


# merge test and train data --------------------------------
X.y.s.data <- rbind(X.y.s.test, X.y.s.train)


# select feature variables of interest: mean() and std() variables
# read feature names
X.labels <- read.table("features.txt", stringsAsFactors=FALSE)

# select features with mean() or std()
selected.labels <- X.labels[grepl("-mean()", X.labels$V2, fixed=TRUE) |
                            grepl("-std()", X.labels$V2, fixed=TRUE), ]

# append column number of activity and subject 
selected.cols <- c(selected.labels[,1], ncol(X.y.s.data)-1, ncol(X.y.s.data))

# build data frame with selected features and activity and subject
x.y.s <- X.y.s.data[ , selected.cols ]

# strip off the "()" in feature names and append names for activity and subject
labels <- c(sub("()","",selected.labels[,2],fixed=TRUE), c("activity", "subject"))

# set names on data frame columns
names(x.y.s) <- labels

# replace activity code by activity name
# read activity names
y.labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)

# convert activity codes into activity names
x.y.s <- mutate(x.y.s, activity = y.labels[activity, 2])


# build tidy data set ---------------------------------------
# group by activity and subject
group.y.s <- group_by(x.y.s, activity, subject)
# summarize per group item taking mean values of feature variables
tidy.data <- summarise_each(group.y.s, funs(mean))

# write tidy data to text file
write.table(tidy.data, file="tidy_data.txt", row.names=FALSE)
