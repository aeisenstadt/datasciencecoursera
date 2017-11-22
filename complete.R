## This is the second part of the assignment for Week 2 of R Programming
## Function designed to find the number of complete cases in given pollutant data called 'specdata' in Assingments

complete <- function(directory, id = 1:332){
  data_complete <- data.frame("id" = id, "nobs" = 0)
  counter <- 1
        for (i in id){
                file_name <- paste("../Assignments/", directory, "/", sprintf("%03d", i), ".csv",  sep = "")
                data <- read.csv(file_name)
                data_complete[counter,2] <- sum(complete.cases(data))
                counter <- counter + 1
        }
  data_complete
}