SamsungTidyData
===============

Files for Getting and Cleaning Data course project that include the R script, ReadMe file and Code Book.

===============

### CLEAN DATASET TO ANALYZE THE MEAN VALUES OF THE HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATASET VERSION 1.0

Details about the original dataset can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Definitions: 
measurement variable: the data collected by the smartphones

This dataset includes the mean measurements of 30 participants who participated in the study to determine the extent to which smartphones could determine if a person was walking, walking upstairs, walking downstairs, sitting, standing or laying down. In the study, 70% of the participants generated the training data and 30% generated the test data. The dataset created by run_analysis.R merges the two datasets together to create one dataset of the means for all participants by type of activity.

This dataset also only includes a subset of the variables collected in the original study. Of the 561 measurments taken in the study, this dataset only includes the variables that computed the mean and standard deviation of the data collected resulting in 66 measurement variables for this dataset. Variables from the original dataset that obtained the mean frequency were not included in this dataset because a standard deviation was not associated with these variables. Statistical analysis need the standard deviation so any variables without a standard deviation variable were not included in this data set.

Each record includes:
- Subject Number
- Activity Type (6 for each subject)
- 66 measurement variables consisting of the mean for each one

#### Please read the coding manual for additional details about the variables.

### HOW THE TIDY DATA WAS CREATED

The original dataset included 6 different text files. There were 2 text files for the 561 measurement variables from the subjects who generated the training and test data. There were 2 text files indicating the subject numbers for training and test. There were 2 text files for the activity conditions for training and test. The first 6 lines of R script loads all 6 files into R.

Next, I used the features.txt file from the original data to identify which variables measured the mean and standard deviation of each measurement collected and created a vector to create two new datasets with the subset of these columns of data. The two new datasets consist of the training data and the test data.

Due to problems I was having with the gsub command, I decided to create my own variable names based on the original ones. More details can be found in the coding manual. I then assigned these names to the columns in the testdata and traindata.

Next, I added the relevant subject and activity variables to each data set to create complete files that show which subject under which condition produced the measurements in the 66 variables for training and test.

I merged both data sets to make one big data set. I also made sure the subject and activity variables were factor variables with the activity variable containing descriptive labels instead of numbers. These labels are based on the original information in the data files under activity_labels.txt.

With one complete dataset, I created the final data set that took the average of each measurement variable for each activity for each subject. This resulted in 6 rows for each subject for all 66 measurement variables.

### HOW TO RUN THE R SCRIPT "run_analysis.R"
* 1) Download the data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* 2) Make sure the folder created for this dataset is UCIHARDataset and contains folders for test and train in order for the script to work.
* 3) Place the R script in your working directory, assuming the UCIHARDataset folder is in there.
* 3) Source the R script.
* 4) The dataset created from this script will be called tidyUCIdata.txt placed in the UCIHARDataset folder.
