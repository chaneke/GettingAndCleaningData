##
## run_analysis
## Author: Omar Velazquez <ovelazquezj@gmail.com>

## I am using config and tools script in separated files in order to keep clean and readable this script
## please go to README file for more details
## Sourcing config values
source("config_run_analysis.R")
## Sourcing tools used by this script
source("tools_run_analysis.R")

## runAnalysis function generates the data set to:
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject.
## output dataset
runAnalysis<-function(){
    initialize()    
}

## Initializing working directories and Dataset files, 
## this function should validate your Working directory structure also Dataset sources
## if not exists, then whould try to download and run a unzip
initialize <- function(){
    prepareDirectoryStructure()    
}
