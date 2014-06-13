## Coding Manual for Dataset Created with run_analysis.R

#### The variables in the original data file were quite detailed and I didn't want to lose a lot of that detail but at the same time didn't want the variable names to be too long. In addition, the names included invalid variable name characters like "-" and "()". Therefore, the variable names for the measurement variables in this smaller dataset created by the script have several parts to them and are based on the following:

* each original variable started with t for time or f if a Fast Foureir Transform was applied to it. The measurement variables in the tidy data set begin either with Time or FFT for easier reading.
* Body or Gravity in each original variable was reduced to Bod or Grav
* Acc or Gyro in the original variable which stand for data collected by an accelerometer or gyroscope were reduced to Acc or Gyr
* Variables that obtained Jerk signals and/or magnitude of the signals were originally identified in the variable as Jerk or Mag. These were reduced to Jrk and Mg.
* Variables that contained mean() and std() are identified in this dataset with MU and SD respectively.
* Finally, the last element of the original dataset specified one of 3-axial signals as X, Y, and Z. these are identified as lower case at the end of each variable.

#### As some examples, an original variable that was "tBodyAcc-mean()-X" is TimeBodAccMUx in the tidy dataset. "fBodyAccJerk-std()-Z" is FFTBodAccJrkSDz. 

## Data Dictionary

#### subject 
 * Type: factor 
 * Description: numbers 1-30 representing each participant

#### activity
 * Type: factor
 * Description: 6 levels consisting of Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying. These were the different types of activities that the data was collected for each subject.
 
#### TimeBodAccMUx 
 * Type: numeric
 * Description: from tBodyAcc-mean()-X 
 
#### TimeBodAccMUy
 * Type: numeric
 * Description: from tBodyAcc-mean()-Y
 
#### TimeBodAccMUz
 * Type: numeric
 * Description: from tBodyAcc-mean()-Z
 
#### TimeBodAccSDx
 * Type: numeric
 * Description: from tBodyAcc-std()-X
 
#### TimeBodAccSDy
 * Type: numeric
 * Description: from tBodyAcc-std()-Y
 
#### TimeBodAccSDyz
 * Type: numeric
 * Description: from tBodyAcc-std()-Z
 
#### TimeGravAccMUx
 * Type: numeric
 * Description: from tGravityAcc-mean()-X
 
#### TimeGravAccMUy
 * Type: numeric
 * Description: from tGravityAcc-mean()-Y

#### TimeGravAccMUz
 * Type: numeric
 * Description: from tGravityAcc-mean()-Z

#### TimeGravAccSDx
 * Type: numeric
 * Description: from tGravityAcc-std()-X
 
#### TimeGravAccSDy
 * Type: numeric
 * Description: from tGravityAcc-std()-Y
 
#### TimeGravAccSDz
 * Type: numeric
 * Description: from tGravityAcc-std()-Z
 
#### TimeBodAccJrkMUx
 * Type: numeric
 * Description: from tBodyAccJerk-mean()-X
 
#### TimeBodAccJrkMUy
 * Type: numeric
 * Description: from tBodyAccJerk-mean()-Y
 
#### TimeBodAccJrkMUz
 * Type: numeric
 * Description: from tBodyAccJerk-mean()-Z
 
#### TimeBodAccJrkSDx
 * Type: numeric
 * Description: from tBodyAccJerk-std()-X
 
#### TimeBodAccJrkSDy
 * Type: numeric
 * Description: from tBodyAccJerk-std()-Y
 
#### TimeBodAccJrkSDz
 * Type: numeric
 * Description: from tBodyAccJerk-std()-Z
 
#### TimeBodGyroMUx
 * Type: numeric
 * Description: from tBodyGyro-mean()-X
 
#### TimeBodGyroMUy
 * Type: numeric
 * Description: from tBodyGyro-mean()-Y
 
#### TimeBodGyroMUz
 * Type: numeric
 * Description: from tBodyGyro-mean()-Z
 
#### TimeBodGyroSDx
 * Type: numeric
 * Description: from tBodyGyro-std()-X
 
#### TimeBodGyroSDy
 * Type: numeric
 * Description: from tBodyGyro-std()-Y
 
#### TimeBodGyroSDz
 * Type: numeric
 * Description: from tBodyGyro-std()-Z
 
#### TimeBodGyrJrkMUx
 * Type: numeric
 * Description: from tBodyGyroJerk-mean()-X
 
#### TimeBodGyrJrkMUy
 * Type: numeric
 * Description: from tBodyGyroJerk-mean()-Y
 
#### TimeBodGyrJrkMUz
 * Type: numeric
 * Description: from tBodyGyroJerk-mean()-Z
 
#### TimeBodGyrJrkSDx
 * Type: numeric
 * Description: from tBodyGyroJerk-std()-X
 
#### TimeBodGyrJrkSDy
 * Type: numeric
 * Description: from tBodyGyroJerk-std()-Y
 
#### TimeBodGyrJrkSDz
 * Type: numeric
 * Description: from tBodyGyroJerk-std()-Z
 
#### TimeBodAccMgMU
 * Type: numeric
 * Description: from tBodyAccMag-mean()
 
#### TimeBodAccMgSD
 * Type: numeric
 * Description: from tBodyAccMag-std()
 
#### TimeGravAccMgMU
 * Type: numeric
 * Description: from tGravityAccMag-mean()

#### TimeGravAccMgSD
 * Type: numeric
 * Description: from tGravityAccMag-std()

#### TimeBodAccJrkMgMU
 * Type: numeric
 * Description: from tBodyAccJerkMag-mean()

#### TimeBodAccJrkMgSD
 * Type: numeric
 * Description: from tBodyAccJerkMag-std()

#### TimeBodGyrMgMU
 * Type: numeric
 * Description: from tBodyGyroMag-mean()

#### TimeBodGyrMgSD
 * Type: numeric
 * Description: from tBodyGyroMag-std()

#### TimeBodGyrJrkMgMU
 * Type: numeric
 * Description: from tBodyGyroJerkMag-mean()

#### TimeBodGyrJrkMgSD
 * Type: numeric
 * Description: from tBodyGyroJerkMag-std()

#### FFTBodAccMUx
 * Type: numeric
 * Description: from fBodyAcc-mean()-X

#### FFTBodAccMUy
 * Type: numeric
 * Description: from fBodyAcc-mean()-Y

#### FFTBodAccMUz
 * Type: numeric
 * Description: from fBodyAcc-mean()-Z

#### FFTBodAccSDx
 * Type: numeric
 * Description: from fBodyAcc-std()-X

#### FFTBodAccSDy
 * Type: numeric
 * Description: from fBodyAcc-std()-Y

#### FFTBodAccSDz
 * Type: numeric
 * Description: from fBodyAcc-std()-Z

#### FFTBodAccJrkMUx
 * Type: numeric
 * Description: from fBodyAccJerk-mean()-X

#### FFTBodAccJrkMUy
 * Type: numeric
 * Description: from fBodyAccJerk-mean()-Y

#### FFTBodAccJrkMUz
 * Type: numeric
 * Description: from fBodyAccJerk-mean()-Z

#### FFTBodAccJrkSDx
 * Type: numeric
 * Description: from fBodyAccJerk-std()-X

#### FFTBodAccJrkSDy
 * Type: numeric
 * Description: from fBodyAccJerk-std()-Y

#### FFTBodAccJrkSDz
 * Type: numeric
 * Description: from fBodyAccJerk-std()-Z

#### FFTBodGyroMUx
 * Type: numeric
 * Description: from fBodyGyro-mean()-X

#### FFTBodGyroMUy
 * Type: numeric
 * Description: from fBodyGyro-mean()-Y

#### FFTBodGyroMUz
 * Type: numeric
 * Description: from fBodyGyro-mean()-Z

#### FFTBodGyroSDx
 * Type: numeric
 * Description: from fBodyGyro-std()-X

#### FFTBodGyroSDy
 * Type: numeric
 * Description: from fBodyGyro-std()-Y

#### FFTBodGyroSDz
 * Type: numeric
 * Description: from fBodyGyro-std()-Z

#### FFTBodAccMgMU
 * Type: numeric
 * Description: from fBodyAccMag-mean()

#### FFTBodAccMgSD
 * Type: numeric
 * Description: from fBodyAccMag-std()

#### FFTBodAccJrkMgMU
 * Type: numeric
 * Description: from fBodyBodyAccJerkMag-mean()
 
#### FFTBodAccJrkMgSD
 * Type: numeric
 * Description: from fBodyBodyAccJerkMag-std()
 
#### FFTBodGyrMgMU
 * Type: numeric
 * Description: from fBodyBodyGyroMag-mean()
 
#### FFTBodGyrMgSD
 * Type: numeric
 * Description: from fBodyBodyGyroMag-std()
 
#### FFTBodGyrJrkMgMU
 * Type: numeric
 * Description: from fBodyBodyGyroJerkMag-mean()
 
#### FFTBodGyrJrkMgSD
 * Type: numeric
 * Description: from fBodyBodyGyroJerkMag-std()
 