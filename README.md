# data_cleaning

This repo contains the following files:
1. **run_analysis.R**: an R-script that needs as _input_ the *UCI HAR Dataset* folder in the working directory and outputs a file called *UCI HAR data tidy.txt*
2. **CodeBook.md:** a codebook explaining the variable names 
3. **README.md** (this file)

## Reading the processed datafile
To read the *UCI HAR data tidy.txt* datafile, use the following command in R:

`df <- read.table("UCI HAR data tidy.txt", header=TRUE)`

## How run_analysis.R works

run_analysis.R requires the _dplyr_ library to run. If not already installed, it can be installed by the following command:
`install.packages("dplyr")`

The script performs all the steps given in the assignment, but not in the in the same order. The process is:

1. Read the measurement data, activity and subject information for both the test and training dataset (yielding 6 dataframes)
2. Combine the test and data populations for all three datasets using rbind(), yielding 3 dataframes
3. Read the "features.txt" and label the variables accordingly
4. Filter out only the variables containing "mean()" or "std()" using regex
5. Combine the subject, activity and filtered measurement data using colbind()
6. Read the "activity_labels.txt" file and replace the activity numbers with the labels.
7. Use regex to modify the variable names to more human readable form. In the process we're also removing the duplication of "Body" seen in some variable names which seems to be an error since there is no explanation for it in the original codebook
8. Use dplyr to group the dataframe and calculate the means of the variables
9. Output.
