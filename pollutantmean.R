## This is the first part of the assignment for Week 2 of R Programming
## Function designed to find the mean of a given pollutant given data called 'specdata' in Assingments

pollutantmean <- function(directory, pollutant, id = 1:332){
        databind <- function(id){
                for (i in id){
                        file_name <- paste("../Assignments/", directory, "/", sprintf("%03d", i), ".csv",  sep = "")
                        if (i == id[1]){
                                data <- read.csv(file_name)
                        }else {
                                data <- rbind(data,read.csv(file_name))
                        }
                }
                data
        }
        data<-databind(id)
        if(pollutant == "sulfate"){
                pollutant_name <- 2
        } else if(pollutant == "nitrate"){
                pollutant_name <- 3
        }
        pol_mean <- mean(data[,pollutant_name], na.rm = TRUE)
        pol_mean
}

