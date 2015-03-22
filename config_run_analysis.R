##
## config_run_analysis
## Author: Omar Velazquez <ovelazquezj@gmail.com>

## in order to keep clean this script, I have created a configuration file
## by separately to help you to customize the use of run_analyzis script, 
## please go to README file for more details and examples

## Global variables
## do not change this values, are used by the Script to perform the main functionality
dirSeparator<-"/"
urlDataSource<<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFileName<<-"UCI_HAR_Dataset.zip"
workingDirectory<<-paste(".",dirSeparator,sep="")
datasetsDirectory <<-paste("UCI HAR Dataset",dirSeparator,sep="")
datasetFileType<-".txt"

###
feautresInfoFile <- paste("features_info",datasetFileType,sep="")
featuresFile <- paste("features",datasetFileType,sep="")
activityLabels <- paste("activity_labels",datasetFileType,sep="")
trainId<-"train"
testId<-"test"
trainDir<-paste(trainId,"/",sep="")
testDir<-paste(testId,"/",sep="")
sets <- "X_"
labels <- "y_"

### Error messages
readmeFile<<-"please go to README.md file for more info"
zipError<<-"Data source does not exists"
dirError<<-"Directory UCI HAR Dataset does not exists, trying to generate it"
fileError<<-paste(": file does not exists, ",readmeFile)