## --------------------------------------------------------------------------------------
# This R script gets and performs some cleaning on human activity data, built
# from recordings of subjects performing daily activities while carrying
# smartphone. The full description of the data set is available at:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## --------------------------------------------------------------------------------------

## Requirement : 


##You should create one R script called run_analysis.R that does the following.

##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement.
##Uses descriptive activity names to name the activities in the data set.
##Appropriately labels the data set with descriptive activity names.
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## --------------------------------------------------------------------------------------

require(knitr)
require(markdown)

##path <- getwd()
##path
##C:/Users/durais/Documents/Coursera/CleansingData/Project
setwd("~/Coursera/CleansingData/Project")

## Make codebook.
require(knitr)
require(markdown)
knit("makeCodebook.Rmd", output = "codebook1.md", encoding = "ISO8859-1", quiet = TRUE)
## [1] "codebook.md"
markdownToHTML("codebook1.md", "codebook1.html")

## Make Run_Analysis with tidy data set
knit("run_analysis.Rmd", output = "run_analysis1.md", encoding="ISO8859-1", quiet = TRUE)
markdownToHTML("run_analysis.md", "run_analysis1.html")