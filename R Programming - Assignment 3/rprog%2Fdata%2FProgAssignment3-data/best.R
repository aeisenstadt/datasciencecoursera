## R Programming Assignment 3 file

## best function: returns a character vector with the name of the hospital that 
## has the best (i.e. lowest) 30-day mortality for the specified outcome
## in that state

best <- function(state, outcome) {
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
        
        ## Return hospital name in that state with lowest 30-day death
        ## rate
        subset <- split(data, data$State)
        frame <- data.frame(subset[grep(state, names(subset))])
        row_num <- which.min(frame[,outcome_col])
        HName <- frame[row_num, 2]
        HName
}