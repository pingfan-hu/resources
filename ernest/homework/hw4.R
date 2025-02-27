# Name:  Giahyue, Ernest
# netID: G30296920

######################################################################
# Place your solutions below here
######################################################################

# Note: For each of the functions in this assignment, you will need to write a
# test function AND the function itself. I strongly recommend you
# write the test function *FIRST*, and then write the function.
# Your test functions will count for half of the available credit for each
# problem. Think carefully about the test cases to include in your test
# functions.
test_isPositiveMultipleOf4Or7 <- function(){
    cat("Testing isisPositiveMultipleOf4Or7()...")
    stopifnot(isPositiveMultipleOf4Or7(4 | 7) == TRUE)
    stopifnot(isPositiveMultipleOf4Or7(4 | 0) == FALSE)
    stopifnot(isPositiveMultipleOf4Or7(0 | 7) == FALSE)
    stopifnot(isPositiveMultipleOf4Or7(7 | 4) == TRUE)
    cat("Passed! Woohoo")
}
isPositiveMultipleOf4Or7 <- function(n | m) {
    if (isfactor(n | m)) {
        return(TRUE)
    }
        
}
test_isPositiveMultipleOf4Or7()
test_isEvenPositiveInt <- function(){
    cat("Testing isEvenPositiveInt()...")
    stopifnot(isEvenPositiveInt("yikes") == FALSE)
    stopifnot(isEvenPositiveInt(123456) == TRUE)
    stopifnot(isEvenPositiveInt(6) == TRUE)
    stopifnot(isEvenPositiveInt("no") == FALSE)
    cat("Passed! Woohoo")
    

isEvenPositiveInt <- function(x) {
    x <- x %% 1
    if (is.integer(x)) {
        return(TRUE)
    }
    if (is.character(x)) {
        return(FALSE)
    }
 
}

isEvenPositiveInt("yikes")
isEvenPositiveInt(123456)
isEvenPositiveInt(6)
isEvenPositiveInt("no")

test_isLeapYear <- function(){
    cat("Testing isLeapYear()...")
    stopifnot(isLeapYear(2025) == FALSE)
    stopifnot(isLeapYear(2024) == TRUE)
    stopifnot(isLeapYear(2028) == TRUE)
    stopifnot(isLeapYear(2005) == FALSE)
    cat("Passed! Woohoo")
    
isLeapYear <- function(year) {
    x <- year / 4
    if (is.integer(x)){
        return(TRUE)
    }
    
}

test_isLeapYear()

test_getTheCents <- function(){
    cat("Testing getTheCents()...")
    stopifnot(getTheCents(0) == NULL)
    stopifnot(getTheCents(9) == 0)
    stopifnot(getTheCents(2.45) == 45)
    cat("Passed! Woohoo")

getTheCents <- function(n) {
    cents <- (round(n - ceiling(n)))
    return(cents)
    
    if (is.integer(n)) {
        return NULL
    }else{
        0
    }

    
}

test_getTheCents()

test_isNumericLooking <- function(){
    cat("Testing isNumericLooking()...")
    stopifnot(isNumericLooking(2) == TRUE)
    stopifnot(isNumericLooking(TRUE) == FALSE)
    stopifnot(isNumericLooking(Inf) == FALSE)
    cat("Passed! Woohoo")

isNumericLooking <- function(n) {
    if (is.numeric(n)){
        return(TRUE)
    }
    if (is.character(n)){
        return(FALSE)
    }
    
}


test_isNumericLooking()

# This assignment, I wished I worked on earlier since I struggled significantly
# You can nest for loops which will come in handy if we ever have more than one dimension
# Similiar to my python class, the concept seems a bit confusing trying to understand
# I hope after class I will use the practice to help me understand the concept better


#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here

#--------------------------------------------------------------
# Test cases:

test_isPositiveMultipleOf4Or7 <- function() {
    cat("Testing isPositiveMultipleOf4Or7()...")
    # Write test cases here
    cat("Passed!\n")
}

test_isEvenPositiveInt <- function() {
    cat("Testing isEvenPositiveInt()...")
    # Write test cases here
    cat("Passed!\n")
}

test_isLeapYear <- function() {
    cat("Testing isLeapYear()...")
    # Write test cases here
    cat("Passed!\n")
}

test_getTheCents <- function() {
    cat("Testing getTheCents()...")
    # Write test cases here
    cat("Passed!\n")
}

test_isNumericLooking <- function() {
    cat("Testing isNumericLooking()...")
    # Write test cases here
    cat("Passed!\n")
}

test_all <- function() {
    cat("Testing all functions...\n")
    test_isPositiveMultipleOf4Or7()
    test_isEvenPositiveInt()
    test_isLeapYear()
    test_getTheCents()
    test_isNumericLooking()
    cat("All passed!\n")
}

# Run this to run all tests
test_all()

#--------------------------------------------------------------
# Reflection: