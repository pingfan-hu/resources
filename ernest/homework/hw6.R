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

# Also, note that to receive full credit you must use good style. Follow the
# best practices described in this style guide:
# http://adv-r.had.co.nz/Style.html

test_vectorFactorial <- function() {
    cat("Testing vectorFactorial()...")
    stopifnot(vectorFactorial(4) == (4 * 3 * 2 * 1))
    stopifnot(vectorFactorial(5) == (5 * 4 * 3 * 2 * 1))
    cat("Passed!")
}

vectorFactorial <- function(n) {
    x = 1:n
    return(prod(c(x)))
}

test_vectorFactorial()

test_nthHighestValue <- function() {
    cat("Testing nthHighestValue()...")
    stopifnot(nthHighestValue(1, x) == (5))
    stopifnot(nthHighestValue(2, x) == (3))
    cat("Passed!")
}
test_nthHighestValue()

nthHighestValue <- function(n, x) {
    n <= length(x)
    x <- c(5, 1, 3)
    a = (sort(length(x), decreasing = TRUE))
    return(a)
}

test_dotProduct <- function() {
    cat("Testing dotProduct()...")
    stopifnot(dotProduct(c(1, 2, 3) & (c(4, 5, 6)))) == ((1*4) + (2*5) + (3*6) = 32))
    cat("Passed!")
}
test_dotProduct()

dotProduct <- function(a, b) {
    x <- c(1, 2, 3) & c(4, 5, 6)
    return(sum(prod(x)))
    
}

test_middleValue <- function() {
    cat("Testing middleValue()...")
    stopifnot(middleValue(c(1, 5, 7)) == (5))
    stopifnot(middleValue(c(1, 2, 4, 8)) == (3))
    cat("Passed!")
}
test_middleValue()

middleValue <- function(a) {
    a <- c(1, 5, 7)
    x = sort(a)
    return(mdedian(x))
}

test_fibonacciSequence <- function() {
    cat("Testing fibonacciSequence()...")
    stopifnot(fibonacciSequence(1) == (1))
    stopifnot(identical(idenfibonacciSequence(2) == (c(1,1))
    cat("Passed!")
}
test_fibonacciSequence()

fibonacciSequence <- function(n) {
    return()
}

test_removeRepeats <- function() {
    cat("Testing removeRepeats()...")
    stopifnot(identical(removeRepeats(c(1, 3, 4, 3, 3, 2, 1, 7, 5)), c(1, 3, 5, 2, 7)) == (TRUE))
    stopifnot(identical(removeRepeats(c('foo', 'foo', 'bar', 'test')), c('foo', 'bar', 'test')) == TRUE))
    cat("Passed!")
}
test_removeRepeats

removeRepeats <- function(x) {
    return()
}





#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here
#Anything in the quotes of the strings will just return the phrase or whatever
#It's inside the string. For this assignment I understood the concept but,
#i struggled to format codes for some of the problems.I messaged one of the TA's
#Letting them know that I will be attending one of the Office hours to get addiotional
#help since I'm kind of falling behind.

#--------------------------------------------------------------
# Test cases:


#--------------------------------------------------------------
# Reflection:


#--------------------------------------------------------------
# Bonus Credit (Optional):