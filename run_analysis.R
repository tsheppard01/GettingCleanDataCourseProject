library(dplyr)

## This function downloads the required data set
## and transforms the raw data into a tidy data set.
## Columns are given descriptive names, repeated 
## columns are removed and the testing and training 
## data combined.  The required summary statistics 
## are then calculated and returned
run_analysis <- function(){

        #Download the raw data sets
        downloadData()

        ## Load the feature table and the activity labels table
        featuresTable <- read.table("./UCI HAR Dataset/features.txt")
        activityLabelsTable <- read.table("./UCI HAR Dataset/activity_labels.txt")

        ## Also give the activties column a sensible name
        names(activityLabelsTable)[2] <- "activity"

        ## Set the data filepaths for Training data
        XTrainURL = "./UCI HAR Dataset/train/X_train.txt"
        YTrainURL = "./UCI HAR Dataset/train/y_train.txt"
        SubjectTrainURL = "./UCI HAR Dataset/train/subject_train.txt"

        ## Set the data filepaths for the Test data
        XTestURL = "./UCI HAR Dataset/test/X_test.txt"
        YTestURL = "./UCI HAR Dataset/test/y_test.txt"
        SubjectTestURL = "./UCI HAR Dataset/test/subject_test.txt"

        ## Load the Training and Testing Datasets
        TrainingSet <- loadDataSet(XTrainURL, YTrainURL, SubjectTrainURL, featuresTable, activityLabelsTable)
        TestingSet <- loadDataSet(XTestURL, YTestURL, SubjectTestURL, featuresTable, activityLabelsTable)

        ## Combine the 2 datasets into a single set
        FullSet <- rbind(TrainingSet, TestingSet)

        ## Deduplicate the columns within the set
        deDupedSet <- FullSet[,!duplicated(names(FullSet))]

        ## Extract the required columns, only the mean and 
        ## standard deviation of each measurement in the original set
        reducedColSet <- deDupedSet[,grep("mean|std|activity|subject", names(deDupedSet), ignore.case=FALSE)]

        ## Produce the summary statistics required
        ## Return a data frame of the average of each column grouped by activity and subject
        summaryStats <- data.frame(summarise_each(group_by(reducedColSet, activity, subject), funs(mean)))

        ##Rename the columns to descriptive name
        names(summaryStats) <- paste("mean of", names(summaryStats), sep= " ")
        names(summaryStats)[1] <- "activity"
        names(summaryStats)[2] <- "subject"

        #Return the summary stats
        summaryStats
}


## This function checks f the data sets have already been
## downloaded and if they haven't downloads and extracts them
downloadData <- function(){

        #check if the data has been previously downloaded
        if(!file.exists("./UCI HAR DataSet")){
                
                #if not download and unzip
                fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                download.file(fileURL, "./Project/data.zip")

                unzip("./data.zip")
        }
}

## This function loads the train/test datasets.  It reads in data files
## the activity table and the subjects table with the data table.  
## Columns are renamed and given descriptive names.  The dataset is 
## then returned
loadDataSet <- function(XURL, YURL, SubjectURL, featuresTable, activityLabels){

        ## Load training set data X_train and y_train
        X <- read.table(XURL)
        y <- read.table(YURL)

        ## Add the feature names to the data table
        names(X) <- as.character(featuresTable[[2]])

        ## Perform inner join on the yTrain data table and the activity Labels table 
        ## based on the activity id
        ## Then bind the activity name column to the training data table
        Activities <- inner_join(y, activityLabelsTable,by="V1")
        DataSet <- cbind(Activities[2],X)

        ## Load the subject identifiers, give the column a sensible
        ## name and bind it to the training data        
        Subjects <- read.table(SubjectURL)
        names(Subjects) <- "subject"
        DataSet <- cbind(Subjects,DataSet)
}