# Reading Train and Test Data.
train = read.table("./train/X_train.txt")
trainalabel = read.table("./train/y_train.txt")
subjects= read.table("./train/subject_train.txt")

binded=cbind(subjects,trainalabel)
names(binded)=c("Subject","ActivityCode")
binded$Subject = as.factor(binded$Subject)
binded$ActivityCode = as.factor(binded$ActivityCode)
bindedtrain=cbind(binded,train)


test = read.table("./test/X_test.txt")
testlabel = read.table("./test/y_test.txt")
subjectsTest= read.table("./test/subject_test.txt")
bindedTest=cbind(subjectsTest,testlabel)
names(bindedTest)=c("Subject","ActivityCode")
bindedTest$Subject = as.factor(bindedTest$Subject)
bindedTest$ActivityCode = as.factor(bindedTest$ActivityCode)
bindedtest=cbind(bindedTest,test)

#1: Merges the training and the test sets to create one data set
SamsungData=rbind(bindedtrain,bindedtest)

#Adding Column Names
xx=c("Subject","ActivityCode")
xx=data.frame(xx)
feature = read.table("features.txt")
features=data.frame(feature[,2])
names(features)=c("xx")
colnames=rbind(xx,features)
names(SamsungData)=c(as.vector(colnames$xx))

#2:Extract only the measurements on the Mean and Std for each measurement
newcolnames=colnames[grep("mean|std",colnames$xx,per=TRUE),]
newcolnames=as.vector(newcolnames)
SamsungDataMSTD=SamsungData[,c("Subject","ActivityCode",newcolnames)]

#3: Name the Activities in the data set
sdata = SamsungDataMSTD
sdata$ActivityCode=as.character(sdata$ActivityCode)
sdata$ActivityCode[sdata$ActivityCode == "1"] = "WALKING"
sdata$ActivityCode[sdata$ActivityCode == "2"] = "WALKING_UPSTAIRS"
sdata$ActivityCode[sdata$ActivityCode == "3"] = "WALKING_DOWNSTAIRS"
sdata$ActivityCode[sdata$ActivityCode == "4"] = "SITTING"
sdata$ActivityCode[sdata$ActivityCode == "5"] = "STANDING"
sdata$ActivityCode[sdata$ActivityCode == "6"] = "LAYING"
sdata$ActivityCode=as.factor(sdata$ActivityCode)

#4: Appropriately labels the data set with descriptive activity names
sdata1=sdata
names(sdata1)=make.names(names(sdata),unique=T)
names(sdata1)=tolower(gsub("\\.","",names(sdata1)))

#5: Tidy data set with the average of each variable for each activity and each subject.
#install.packages("plyr")
library(plyr)
sdata2=ddply(sdata1, .(subject,activitycode), colwise(mean))

#cleaning dataset objecrts
rm(xx,trainalabel,train,testlabel,test,subjectsTest,subjects,sdata,sdata1,feature,features,colnames,bindedtrain,bindedTest,bindedtest,binded,SamsungDataMSTD,SamsungData)