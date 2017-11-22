## R Programming Assignment 3 file

## rankhospital function: returns a character vector with the name
##of the hospital that has the ranking specified by the num argument

rankhospital <- function(state, outcome, num = "best") {
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
        state_check <- grep(state, data[,7])
        if (length(state_check) == 0) stop("invalid state")
        
        ## Return hospital name in that state with the given rank
        ## 30-day death rate
        divide <- split(data, data$State)
        byState <- data.frame(divide[grep(state, names(divide))])
        rankedframe <- byState[ order(as.numeric(byState[,outcome_col]), byState[,2]), ]
        
        if (num == "best") {return(rankedframe[1, 2])}
        else if (num == "worst") {
                worst <- which.max(rankedframe[, outcome_col])
                final <- rankedframe[worst,2]
                return(final)}
        rankedframe[num, 2]
}