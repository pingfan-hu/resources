# Name:  Last, First
# netID: Insert your netID here

# I worked with the following classmates on this assignment:
# 1) Name: Last, First
# 2) Name: Last, First

library(TurtleGraphics)

######################################################################
# Place your solutions here
######################################################################

test_vectorFactorial <- function() {
    cat("Testing vectorFactorial()...")
    stopifnot(vectorFactorial(0) == 1)
    stopifnot(vectorFactorial(1) == 1)
    stopifnot(vectorFactorial(3) == 6)
    stopifnot(vectorFactorial(4) == 24)
    stopifnot(vectorFactorial(5) == 120)
    cat("Passed!\n")
}

vectorFactorial <- function(n) {
    if (n == 0) { return(1) }
    return(prod(seq(n)))
}

test_vectorFactorial()

test_nthHighestValue <- function() {
    cat("Testing nthHighestValue()...")
    stopifnot(nthHighestValue(1, c(1,3,5)) == 5)
    stopifnot(nthHighestValue(2, c(1,3,5)) == 3)
    stopifnot(nthHighestValue(1, c(3,5,1)) == 5)
    stopifnot(nthHighestValue(3, c(pi,3,2.99)) == 2.99)
    cat("Passed!\n")
}

nthHighestValue <- function(n, x) {
    return(sort(x, decreasing = TRUE)[n])
}

test_nthHighestValue()

test_dotProduct <- function() {
    cat("Testing dotProduct()...")
    stopifnot(dotProduct(c(1,2,3), c(4,5,6)) == 32)
    stopifnot(dotProduct(c(1,2), c(4,5,6)) == 14)
    stopifnot(dotProduct(c(2,3,4), c(-7,1,9)) == 25)
    stopifnot(dotProduct(c(0,0,0), c(-7,1,9)) == 0)
    cat("Passed!\n")
}

dotProduct <- function(a, b) {
    if (length(a) < length(b)) {
        b = b[1:length(a)]
    } else if (length(b) < length(a)) {
        a = a[1:length(b)]
    }
    return(sum(a*b))
}

test_dotProduct()

test_middleValue <- function() {
    cat("Testing middleValue()...")
    stopifnot(middleValue(c(5,3,8,4)) == mean(c(3,8)))
    stopifnot(middleValue(c(0,0,0)) == 0)
    stopifnot(middleValue(c(1,2,3)) == 2)
    stopifnot(middleValue(c(4,5,6,7,8)) == 6)
    stopifnot(middleValue(c(4,5,6,7)) == mean(c(5,6)))
    cat("Passed!\n")
}

middleValue <- function(a) {
    n <- ceiling(length(a) / 2)
    if (length(a) %% 2 == 0) {
        return((a[n] + a[n + 1]) / 2)
    } else {
        return(a[n])
    }
}

test_middleValue()


test_fibonacciSequence <- function() {
    cat("Testing fibonacciSequence()...")
    stopifnot(fibonacciSequence(1) == 1)
    stopifnot(identical(fibonacciSequence(2), c(1, 1)))
    stopifnot(identical(fibonacciSequence(3), c(1, 1, 2)))
    stopifnot(identical(fibonacciSequence(7), c(1, 1, 2, 3, 5, 8, 13)))
    cat("Passed!\n")
}

fibonacciSequence <- function(n) {
    if (n == 1) {
        return(1)
    }
    if (n == 2) {
        return(c(1, 1))
    }
    fib <- c(1, 1)
    for (i in 3:n) {
        fib[i] <- fib[i - 1] + fib[i - 2]
    }
    return(fib)
}

test_fibonacciSequence()

test_removeRepeats <- function() {
    cat("Testing removeRepeats()...")
    stopifnot(identical(removeRepeats(0), 0))
    stopifnot(identical(
        removeRepeats(c(1, 3, 5, 3, 3, 2, 1, 7, 5)), c(1, 3, 5, 2, 7)
    ))
    stopifnot(identical(
        removeRepeats(c(1, 3, 3, 3, 2, 1, 4, 4, 4)), unique(c(1, 3, 3, 3, 2, 1, 4, 4, 4))
    ))
    stopifnot(identical(
        removeRepeats(c(4, 1, 3, 3, 4, 4, 4)), unique(c(4, 1, 3, 3, 4, 4, 4))
    ))
    stopifnot(identical(
        removeRepeats(c('foo', 'foo', 'bar', 'test')), c('foo', 'bar', 'test')
    ))
    stopifnot(identical(
        removeRepeats(c('foo', 'bar', 'test')), c('foo', 'bar', 'test')
    ))
    cat("Passed!\n")
}

removeRepeats <- function(x) {
    result <- c()
    for (i in seq(length(x))) {
        # Check if the element has not been seen before
        element <- x[i]
        if (! element %in% result) {
            # If not, add it to the result vector
            result <- c(result, element)
        }
    }
    return(result)
}

test_removeRepeats()


#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here

# Bonus

test_rotateVector <- function() {
    cat("Testing rotateVector()...")
    stopifnot(identical(rotateVector(c(1, 2, 3, 4), 1), c(4, 1, 2, 3)))
    stopifnot(identical(rotateVector(c(1, 2, 3, 4), -1), c(2, 3, 4, 1)))
    stopifnot(identical(rotateVector(c(1, 2, 3, 4), -5), c(2, 3, 4, 1)))
    stopifnot(identical(rotateVector(c(1, 2, 3, 4), 5), c(4, 1, 2, 3)))
    stopifnot(identical(rotateVector(c(4, 3, 2, 6, 5), 2), c(6, 5, 4, 3, 2)))
    stopifnot(identical(rotateVector(c(1, 2, 3), 0), c(1, 2, 3)))
    stopifnot(identical(rotateVector(c(1, 2, 3), -1), c(2, 3, 1)))
    stopifnot(identical(rotateVector(c(1, 2, 3, 4), 4), c(1, 2, 3, 4)))
    cat("Passed!\n")
}

rotateVector <- function(a, n) {
    l <- length(a)
    n <- n %% l
    if (n == 0) { return(a) }
    return(a[c((l - n + 1):l, 1:(l - n))])
}

test_rotateVector()
