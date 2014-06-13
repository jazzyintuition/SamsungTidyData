## Reading all files into R
Xtest <- read.table("UCIHARDataset/test/X_test.txt", header = FALSE)
Xtrain <- read.table("UCIHARDataset/train/X_train.txt", header = FALSE)
activity <- read.table("UCIHARDataset/test/y_test.txt", header = FALSE)
activityTrain <- read.table("UCIHARDataset/train/y_train.txt", header = FALSE)
subject <- read.table("UCIHARDataset/test/subject_test.txt", header = FALSE)
subjectTrain <- read.table("UCIHARDataset/train/subject_train.txt", header = FALSE)

# Subsetting the data for the relevant columns based on the features.txt file
testdata <- Xtest[, c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)]
traindata <- Xtrain[, c(1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122, 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228, 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 345, 346, 347, 348, 349, 350, 424, 425, 426, 427, 428, 429, 503, 504, 516, 517, 529, 530, 542, 543)]

## Creating my own variable names for the new data set.
VarLabels<- c("TimeBodAccMUx", "TimeBodAccMUy", "TimeBodAccMUz", "TimeBodAccSDx", "TimeBodAccSDy",
                       "TimeBodAccSDz", "TimeGravAccMUx", "TimeGravAccMUy", "TimeGravAccMUz", "TimeGravAccSDx", "TimeGravAccSDy", "TimeGravAccSDz",
                       "TimeBodAccJrkMUx", "TimeBodAccJrkMUy", "TimeBodAccJrkMUz", "TimeBodAccJrkSDx", "TimeBodAccJrkSDy",
                       "TimeBodAccJrkSDz", "TimeBodGyroMUx", "TimeBodGyroMUy", "TimeBodGyroMUz", "TimeBodGyroSDx", 
                       "TimeBodGyroSDy", "TimeBodGyroSDz", "TimeBodGyrJrkMUx", "TimeBodGyrJrkMUy", "TimeBodGyrJrkMUz",
                       "TimeBodGyrJrkSDx", "TimeBodGyrJrkSDy", "TimeBodGyrJrkSDz", "TimeBodAccMgMU", "TimeBodAccMgSD",
                       "TimeGravAccMgMU", "TimeGravAccMgSD", "TimeBodAccJrkMgMU", "TimeBodAccJrkMgSD", "TimeBodGyrMgMU",
                       "TimeBodGyrMgSD", "TimeBodGyrJrkMgMU", "TimeBodGyrJrkMgSD", "FFTBodAccMUx", "FFTBodAccMUy", 
                       "FFTBodAccMUz", "FFTBodAccSDx", "FFTBodAccSDy", "FFTBodAccSDz", "FFTBodAccJrkMUx", "FFTBodAccJrkMUy", 
                       "FFTBodAccJrkMUz", "FFTBodAccJrkSDx", "FFTBodAccJrkSDy","FFTBodAccJrkSDz", "FFTBodGyroMUx", 
                       "FFTBodGyroMUy", "FFTBodGyroMUz", "FFTBodGyroSDx", "FFTBodGyroSDy", "FFTBodGyroSDz", "FFTBodAccMgMU", 
                       "FFTBodAccMgSD", "FFTBodAccJrkMgMU", "FFTBodAccJrkMgSD", "FFTBodGyrMgMU",
                       "FFTBodGyrMgSD", "FFTBodGyrJrkMgMU", "FFTBodGyrJrkMgSD")
colnames(testdata) <- VarLabels
colnames(traindata) <- VarLabels

## Adding the subject and activity variables to the new data set
TotalTestData <- cbind(subject, activity, testdata)
colnames(TotalTestData)[1:2] <- c("subject", "activity")
TotalTrainData <- cbind(subjectTrain, activityTrain, traindata)
colnames(TotalTrainData)[1:2] <- c("subject", "activity")

## creating the merged database needed to make the tidy one
FullData <- rbind(TotalTestData, TotalTrainData)
FullData$activity <- factor(FullData$activity, labels = c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying"))
FullData$subject <- factor(FullData$subject)

## making the tidy data set and writing it to a file
tidydata <- ddply(FullData, .(subject, activity), colwise(mean, VarLabels))
write.table(tidydata, file = "UCIHARDataset/tidyUCIdata.txt", col.names=TRUE)