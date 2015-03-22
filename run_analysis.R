##
## run_analysis
## Author: Omar Velazquez <ovelazquezj@gmail.com>

## Run config values, in order to keep clean this script, I have created a configuration file
## by separately to help you to customize the use of run_analizis script, please README file
## for more details and examples
source("config_run_analysis.R")

## Initializing working directories and Dataset files, 
## this function should validate your Working directory structure also Dataset sources
## if not exists, then whould try to download and run a unzip
initialize <- function(){
    prepareDirectoryStructure()    
}
prepareDirectoryStructure<-function(){
    if(!existDataSourceDir()){
        unzipDatasetFileSource()
    }
    print("READY TO GO!",,quote=FALSE)
}
existDataSourceDir<-function(){
    if(!fileDirValidation(datasetsDirectory)){
        print(dirError,quote=FALSE)
        FALSE
    }else{
        TRUE
    }
}
existsDataSourceFile<-function(){
    if(!fileDirValidation(zipFileName)){
        print(zipError,quote=FALSE)
        FALSE
    }else{
        TRUE
    }
}
unzipDatasetFileSource<-function(){
    if(!existsDataSourceFile()){
        downloadDataSource()
    }
    print(paste("Extracting dataset source directory in: ",workingDirectory, datasetsDirectory),quote=FALSE)
    result<-tryCatch({
        unzip(zipFileName)
    },warning=function(warn){
        print(paste("UNZIP_WARNING: " , warn),quote=FALSE)
    },error=function(err){
        print(paste("UNZIP_ERROR: " , err,"\\n Please Try to unzip manually"),quote=FALSE)
        print(readmeFile,quote=FALSE)
    },finaly={
        print("Extracting file",quote=FALSE)
    }) 
}
downloadDataSource<-function(){
    result<-tryCatch({
        download.file(urlDataSource,zipFileName,"curl")    
    },warning=function(warn){
        print(paste("DOWNLOAD_WARNING: " , warn),quote=FALSE)
    },error=function(err){
        print(paste("DOWNLOAD_ERROR: " , err,"\n Try to download and unzip manually"),quote=FALSE)
        print(readmeFile,quote=FALSE)
    },finaly={
        print("Starting download",quote=FALSE)
    }) 
}
validateTrainingDirectory<-function(){
    
}
validateTestDirectory<-function(){
    
}

readFileSource <- function(fileName){

    
}
fileDirValidation<-function(sourceName){
    if(file.exists(sourceName)){
        TRUE
    }else{
        FALSE
    }
}