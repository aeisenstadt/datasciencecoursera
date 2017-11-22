## This is the third part of the assignment for Week 2 of R Programming
## Function designed to find the correlation betweeen between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold

corr <- function(directory, threshold = 0) {
        files <- list.files(path= paste("../Assignments/", directory, sep = ""))
        cor_vector <- numeric()
        for (counter in 1:length(files)){
                file_name <- paste("../Assignments/", directory, "/", sprintf("%03d", counter), ".csv",  sep = "")
                data <- read.csv(file_name)
                cases <- sum(complete.cases(data))
                if (cases > threshold){
                        cor_vector <- c(cor_vector, cor(data[,2], data[,3], use = "na.or.complete"))  
                }
        }
        cor_vector
}