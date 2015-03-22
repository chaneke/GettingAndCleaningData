##
## tools_run_analysis
## Author: Omar Velazquez <ovelazquezj@gmail.com>

## In order to keep clean my code, i have prepared this script with tools for general use, as file validations 
## dowload and uzip functionality
## please go to README file for more details and examples

## TO DO: prepare as reusable code

prepareDirectoryStructure<-function(){
    if(!existDataSourceDir()){
        unzipDatasetFileSource()
    }
    print("READY TO GO!",quote=FALSE)
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

readFileSource<-function(fileName){
    
    
}
fileDirValidation<-function(sourceName){
    if(file.exists(sourceName)){
        TRUE
    }else{
        FALSE
    }
}