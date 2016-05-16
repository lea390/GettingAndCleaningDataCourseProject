Cookbook
========

Information regarding the initial data for this assignment can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The description of the initial data is the following:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



The description of the analysis for this assignment is the following:

The data was analysed by only selecting the measures related to the mean and std. The names for the columns and activities were simplified. Following, the mean for each subject in each of the 6 activities (walking, walking up, walking down, sitting, standing, lying) in the selected measures was calculated. The new data set contains the means for each subject and activity for the following selected measures:

"1" "tbodyaccmeanx"
"2" "tbodyaccmeany"
"3" "tbodyaccmeanz"
"4" "tbodyaccstdx"
"5" "tbodyaccstdy"
"6" "tbodyaccstdz"
"7" "tgravityaccmeanx"
"8" "tgravityaccmeany"
"9" "tgravityaccmeanz"
"10" "tgravityaccstdx"
"11" "tgravityaccstdy"
"12" "tgravityaccstdz"
"13" "tbodyaccjerkmeanx"
"14" "tbodyaccjerkmeany"
"15" "tbodyaccjerkmeanz"
"16" "tbodyaccjerkstdx"
"17" "tbodyaccjerkstdy"
"18" "tbodyaccjerkstdz"
"19" "tbodygyromeanx"
"20" "tbodygyromeany"
"21" "tbodygyromeanz"
"22" "tbodygyrostdx"
"23" "tbodygyrostdy"
"24" "tbodygyrostdz"
"25" "tbodygyrojerkmeanx"
"26" "tbodygyrojerkmeany"
"27" "tbodygyrojerkmeanz"
"28" "tbodygyrojerkstdx"
"29" "tbodygyrojerkstdy"
"30" "tbodygyrojerkstdz"
"31" "tbodyaccmagmean"
"32" "tbodyaccmagstd"
"33" "tgravityaccmagmean"
"34" "tgravityaccmagstd"
"35" "tbodyaccjerkmagmean"
"36" "tbodyaccjerkmagstd"
"37" "tbodygyromagmean"
"38" "tbodygyromagstd"
"39" "tbodygyrojerkmagmean"
"40" "tbodygyrojerkmagstd"
"41" "fbodyaccmeanx"
"42" "fbodyaccmeany"
"43" "fbodyaccmeanz"
"44" "fbodyaccstdx"
"45" "fbodyaccstdy"
"46" "fbodyaccstdz"
"47" "fbodyaccmeanfreqx"
"48" "fbodyaccmeanfreqy"
"49" "fbodyaccmeanfreqz"
"50" "fbodyaccjerkmeanx"
"51" "fbodyaccjerkmeany"
"52" "fbodyaccjerkmeanz"
"53" "fbodyaccjerkstdx"
"54" "fbodyaccjerkstdy"
"55" "fbodyaccjerkstdz"
"56" "fbodyaccjerkmeanfreqx"
"57" "fbodyaccjerkmeanfreqy"
"58" "fbodyaccjerkmeanfreqz"
"59" "fbodygyromeanx"
"60" "fbodygyromeany"
"61" "fbodygyromeanz"
"62" "fbodygyrostdx"
"63" "fbodygyrostdy"
"64" "fbodygyrostdz"
"65" "fbodygyromeanfreqx"
"66" "fbodygyromeanfreqy"
"67" "fbodygyromeanfreqz"
"68" "fbodyaccmagmean"
"69" "fbodyaccmagstd"
"70" "fbodyaccmagmeanfreq"
"71" "fbodybodyaccjerkmagmean"
"72" "fbodybodyaccjerkmagstd"
"73" "fbodybodyaccjerkmagmeanfreq"
"74" "fbodybodygyromagmean"
"75" "fbodybodygyromagstd"
"76" "fbodybodygyromagmeanfreq"
"77" "fbodybodygyrojerkmagmean"
"78" "fbodybodygyrojerkmagstd"
"79" "fbodybodygyrojerkmagmeanfreq"
