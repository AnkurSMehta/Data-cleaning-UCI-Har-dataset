## this script prepares a tidy data set for the Human Activity Cognition using smartphone
## at the UCI machine learning laboratory
## this assumes working directory is set to the root that contains test and train sub directories

Actlabel <- read.table("activity_labels.txt")
features <- read.table("features.txt", header = F)
subtest <- read.table("test/subject_test.txt", header = T)
xtest <- read.table("test/X_test.txt", header = T)
ytest <- read.table("test/y_test.txt", header = T)
subtrain <- read.table("train/subject_train.txt", header = T)
xtrain <- read.table("train/X_train.txt", header = T)
ytrain <- read.table("train/y_train.txt", header = T)
names(subtest) <- "Subject"
names(subtrain) <- "Subject"
names(xtest) <- features[,2]
names(xtrain) <- features[,2]
names(ytest) <- "Activity"
names(ytrain) <- "Activity"
ytest$Activity_Name <- Actlabel$V2[match(ytest$Activity, Actlabel$V1)]
ytrain$Activity_Name <- Actlabel$V2[match(ytrain$Activity, Actlabel$V1)]
xtest <- cbind(subtest, cbind(ytest, xtest))
xtrain <- cbind(subtrain, cbind(ytrain, xtrain))
total_data <- rbind(xtest,xtrain)
Feature_mean <- colMeans(total_data[,-(1:3)])
Feature_stdeviation <- sapply(total_data[,-(1:3)], sd)
Groupmean <- aggregate(total_data[,-(1:3)], list(total_data$Subject, total_data$Activity, total_data$Activity_Name), mean)
names(Groupmean)[1:3] <- c("Subject", "Activity", "Activity_Name")
write.table(Groupmean, file = "Groupmean_by_Subject_Activity.txt", col.names = T)