# Name:  Last, First
# netID: Insert your netID here

# I worked with the following classmates on this assignment:
# 1) Name: Last, First
# 2) Name: Last, First

almostEqual <- function(n1, n2, threshold = 0.00001) {
    return(abs(n1 - n2) <= threshold)
}

######################################################################
# Place your solutions here
######################################################################

isPositiveMultipleOf4Or7 <- function(n) {
    if (is.numeric(n)) {
        if ((n <= 0) | (n != as.integer(n))) {
            return(FALSE)
        }
        return(((n %% 4) == 0) | ((n %% 7) == 0))
    }
    return(FALSE)
}

isEvenPositiveInt <- function(x) {
    if (! is.numeric(x)) { return(FALSE) }
    # if (! x == as.integer(x)) { return(FALSE) }
    return((x > 0) & ((x %% 2) == 0))
}

# Version 1
isLeapYear <- function(year) {
    if (year < 1582) {
        return(FALSE)
    }
    if ((year %% 400) == 0) {
        return(TRUE)
    } else if ((year %% 100) == 0) {
        return(FALSE)
    } else if ((year %% 4) == 0) {
        return(TRUE)
    }
    return(FALSE)
}

# Version 2
isLeapYear <- function(year) {
    if (year < 1582) {
        return(FALSE)
    }
    return((year %% 4 == 0) & ((year %% 100 != 0) | (year %% 400 == 0)))
}

getTheCents <- function(n) {
    if (! is.numeric(n)) { return(NULL) }
    if (n == as.integer(n)) { return(0) }
    return(100*round(abs(n) %% 1, 2))
}

isNumericLooking <- function(n) {
    if (is.logical(n)) { return(FALSE) }
    n <- as.numeric(n)
    if ((n == Inf) |
        (n != as.numeric(n)) |
        is.na(n) |
        is.nan(n) |
        is.null(n)) {
            return(FALSE)
    }
    return(TRUE)
}


#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here

#--------------------------------------------------------------
# Test cases:

test_isPositiveMultipleOf4Or7 <- function() {
    cat("Testing isPositiveMultipleOf4Or7()...")
    stopifnot(isPositiveMultipleOf4Or7(0) == FALSE)
    stopifnot(isPositiveMultipleOf4Or7(1) == FALSE)
    stopifnot(isPositiveMultipleOf4Or7(-7) == FALSE)
    stopifnot(isPositiveMultipleOf4Or7(4) == TRUE)
    stopifnot(isPositiveMultipleOf4Or7(7) == TRUE)
    stopifnot(isPositiveMultipleOf4Or7(28) == TRUE)
    stopifnot(isPositiveMultipleOf4Or7(49) == TRUE)
    stopifnot(isPositiveMultipleOf4Or7(100) == TRUE)
    stopifnot(isPositiveMultipleOf4Or7('notANumer') == FALSE)
    cat("Passed!\n")
}

test_isEvenPositiveInt <- function() {
    cat("Testing isEvenPositiveInt()...")
    stopifnot(isEvenPositiveInt(2) == TRUE)
    stopifnot(isEvenPositiveInt(2040608) == TRUE)
    stopifnot(isEvenPositiveInt(21) == FALSE)
    stopifnot(isEvenPositiveInt(20406081) == FALSE)
    stopifnot(isEvenPositiveInt(0) == FALSE)
    stopifnot(isEvenPositiveInt(-2) == FALSE)
    stopifnot(isEvenPositiveInt(-2040608) == FALSE)
    stopifnot(isEvenPositiveInt("Let's go!") == FALSE)
    stopifnot(isEvenPositiveInt(1.23456) == FALSE)
    # stopifnot(isEvenPositiveInt(2.0) == FALSE)
    stopifnot(isEvenPositiveInt(TRUE) == FALSE)
    cat("Passed!\n")
}

test_isLeapYear <- function() {
    cat("Testing isLeapYear()...")
    stopifnot(isLeapYear(2016) == TRUE)
    stopifnot(isLeapYear(2000) == TRUE)
    stopifnot(isLeapYear(1872) == TRUE)
    stopifnot(isLeapYear(2200) == FALSE)
    stopifnot(isLeapYear(2400) == TRUE)
    stopifnot(isLeapYear(1800) == FALSE)
    stopifnot(isLeapYear(2019) == FALSE)
    stopifnot(isLeapYear(0)    == FALSE)
    cat("Passed!\n")
}

test_getTheCents <- function() {
    cat("Testing getTheCents()...")
    stopifnot(almostEqual(getTheCents(2.45), 45))
    stopifnot(almostEqual(getTheCents(2.00), 0))
    stopifnot(getTheCents(42) == 0)
    stopifnot(is.null(getTheCents('notANumer')))
    stopifnot(almostEqual(getTheCents(3.953), 95))
    cat("Passed!\n")
}

test_isNumericLooking <- function() {
    cat("Testing isNumericLooking()...")
    stopifnot(isNumericLooking(1) == TRUE)
    stopifnot(isNumericLooking(0) == TRUE)
    stopifnot(isNumericLooking("2") == TRUE)
    stopifnot(isNumericLooking(Inf) == FALSE)
    stopifnot(isNumericLooking("Inf") == FALSE)
    stopifnot(isNumericLooking(NA) == FALSE)
    stopifnot(isNumericLooking("NA") == FALSE)
    stopifnot(isNumericLooking(NaN) == FALSE)
    stopifnot(isNumericLooking("NaN") == FALSE)
    stopifnot(isNumericLooking("NULL") == FALSE)
    stopifnot(isNumericLooking(TRUE) == FALSE)
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
