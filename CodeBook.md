Processed Human Activity Recognition Smartphones Dataset (sdata2) CodeBook: 
==========================================================================

A.STUDY DESIGN:
--------------
These data were processed from Human Activity Recognition Using Smartphones Dataset Version 1.0

Data transformations and cleaning:
==================================
1.Training and test set were merged to form one data set.
2.Column which measures the mean and Standard deviation were extracted from the merged dataset.
3.Descriptive Activitiies name were placed on the dataset
4.Column name were renamed to be more descriptive by removing underscore,dots and converting capital letters to lower case
5.Data were summarized with the average of each activity and each subject.


B.CODE BOOK:
------------
The dataset variables:
==========================================================================
bodyacc - body acceleration signals mean and standard deviation.
gravityacc - gravity acceleration signals mean and standard deviation.
bodyaccjerk - the body linear acceleration Jerk signals mean and standard deviation.
bodygyro - the body angular signals mean and standard deviation.
bodygyrojerk - the body angular Jerk signals mean and standard deviation.
*mag* - magnitude of three-dimensional signals mean and standard deviation.

Case Unique Identifiers
=======================
subject
activitycode

Time domain signals variables Average for mean and standard deviation
=====================================================================
tbodyaccmeanx
tbodyaccmeany
tbodyaccmeanz

tbodyaccstdx
tbodyaccstdy
tbodyaccstdz

tgravityaccmeanx
tgravityaccmeany
tgravityaccmeanz

tgravityaccstdx
tgravityaccstdy
tgravityaccstdz

tbodyaccjerkmeanx
tbodyaccjerkmeany
tbodyaccjerkmeanz

tbodyaccjerkstdx
tbodyaccjerkstdy
tbodyaccjerkstdz

tbodygyromeanx
tbodygyromeany
tbodygyromeanz

tbodygyrostdx
tbodygyrostdy
tbodygyrostdz

tbodygyrojerkmeanx
tbodygyrojerkmeany
tbodygyrojerkmeanz

tbodygyrojerkstdx
tbodygyrojerkstdy
tbodygyrojerkstdz

tbodyaccmagmean
tbodyaccmagstd
tgravityaccmagmean
tgravityaccmagstd
tbodyaccjerkmagmean
tbodyaccjerkmagstd
tbodygyromagmean
tbodygyromagstd
tbodygyrojerkmagmean
tbodygyrojerkmagstd

frequency domain signals variables Average for mean and standard deviation
==========================================================================
fbodyaccmeanx
fbodyaccmeany
fbodyaccmeanz

fbodyaccstdx
fbodyaccstdy
fbodyaccstdz

fbodyaccmeanfreqx
fbodyaccmeanfreqy
fbodyaccmeanfreqz

fbodyaccjerkmeanx
fbodyaccjerkmeany
fbodyaccjerkmeanz

fbodyaccjerkstdx
fbodyaccjerkstdy
fbodyaccjerkstdz

fbodyaccjerkmeanfreqx
fbodyaccjerkmeanfreqy
fbodyaccjerkmeanfreqz

fbodygyromeanx
fbodygyromeany
fbodygyromeanz

fbodygyrostdx
fbodygyrostdy
fbodygyrostdz

fbodygyromeanfreqx
fbodygyromeanfreqy
fbodygyromeanfreqz

fbodyaccmagmean
fbodyaccmagstd
fbodyaccmagmeanfreq
fbodybodyaccjerkmagmean
fbodybodyaccjerkmagstd
fbodybodyaccjerkmagmeanfreq
fbodybodygyromagmean
fbodybodygyromagstd
fbodybodygyromagmeanfreq
fbodybodygyrojerkmagmean
fbodybodygyrojerkmagstd
fbodybodygyrojerkmagmeanfreq
====================================================




