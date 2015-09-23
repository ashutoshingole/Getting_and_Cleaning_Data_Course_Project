library(plyr)

# 1.
X_test <- read.table("test/X_test.txt")
X_train <- read.table("train/X_train.txt")

X_merge <- rbind(X_test,X_train)

y_test <- read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")

y_merge <- rbind(y_test,y_train)

sub_test <- read.table("test/subject_test.txt")
sub_train <- read.table("train/subject_train.txt")

sub_merge <- rbind(sub_test,sub_train)

#2.
feat <- read.table("features.txt")
msf <- grep("-(mean|std)\\(\\)", feat[, 2])
X_merge <- X_merge[, msf]
names(X_merge) <- feat[msf, 2]


#3.
act <- read.table("activity_labels.txt")
y_merge[, 1] <- act[y_merge[, 1], 2]
names(y_merge) <- "activity"


#4.
names(sub_merge) <- "subject"
combined <- cbind(X_merge, y_merge, sub_merge)


#5.
average <- ddply(combined, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(average, "average.txt", row.name=FALSE)
