## R Programming Assignment 3 file

## rankall function: returns a 2-column data frame containing the hospital 
## in each state that has the ranking specified in num

rankall <- function(outcome, num = "best") {
        ## Read outcome data
        data <- read.csv("outcome-of-care-measures.csv", 
                         colClasses = "character")
        
        ## Check that state and outcome are valid
        outcome_col <- numeric()
        if (outcome == "heart attack") {
                outcome_col <- 11
        } else if (outcome == "heart failure"){
                outcome_col <- 17
        } else if (outcome == "pneumonia"){
                outcome_col <- 23
        } else {
                stop("invalid outcome")
        }
        
        ## For each state, find the hospital of the given rank
        divide <- split(data, data$State)
        final <- data.frame("State name" = 1:length(divide), "Best Hospital" =
                                    1:length(divide))
        for( i in 1:length(divide)){
                final[i,2] <- rankhospital(names(divide)[i], outcome, num)
                final[i,1] <- names(divide)[i]
        }
       
        ## Return a data frame with the hospital names and the
        ## (abbreviated) state name
        
        final
}