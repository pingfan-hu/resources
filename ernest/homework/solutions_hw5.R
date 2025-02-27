# Name:  Last, First
# netID: Insert your netID here

# I worked with the following classmates on this assignment:
# 1) Name: Last, First
# 2) Name: Last, First

library(TurtleGraphics)

######################################################################
# Place your solutions here
######################################################################

test_loopFactorial <- function() {
    cat("Testing loopFactorial()...")
    stopifnot(loopFactorial(0) == 1)
    stopifnot(loopFactorial(1) == 1)
    stopifnot(loopFactorial(3) == 6)
    stopifnot(loopFactorial(4) == 24)
    stopifnot(loopFactorial(5) == 120)
    cat("Passed!\n")
}

loopFactorial <- function(n) {
    if (n == 0) { return(1) }
    result = 1
    for (smallerInteger in seq(n)) {
        result = result*smallerInteger
    }
    return(result)
}

test_leftMostDigit <- function() {
    cat("Testing leftMostDigit()...")
    stopifnot(leftMostDigit(12345) == 1)
    stopifnot(leftMostDigit(0) == 0)
    stopifnot(leftMostDigit("0") == 0)
    stopifnot(leftMostDigit(-111) == 1)
    stopifnot(leftMostDigit("-111") == 1)
    stopifnot(leftMostDigit(72658489290098) == 7)
    cat("Passed!\n")
}

leftMostDigit <- function(n) {
    n <- abs(n)
    while (n >= 10) {
        n <- n %/% 10
    }
    return(n)
}

test_numDigits <- function() {
    cat("Testing numDigits()...")
    stopifnot(numDigits(12345) == 5)
    stopifnot(numDigits(0) == 1)
    stopifnot(numDigits(-111) == 3)
    cat("Passed!\n")
}

numDigits <- function(n) {
    if (n == 0) {return(1)}
    n <- abs(n)
    count = 0
    while (n > 0) {
        count = count + 1
        n = n %/% 10
    }
    return(count)
}

## Happy Numbers

test_sumOfSquaresOfDigits <- function() {
    cat("Testing sumOfSquaresOfDigits()...")
    stopifnot(sumOfSquaresOfDigits(5) == 25) # 5^2 = 25
    stopifnot(sumOfSquaresOfDigits(12) == 5) # 1^2 + 2^2 = 1+4 = 5
    stopifnot(sumOfSquaresOfDigits(234) == 29) # 2^2 + 3^2 + 4^2 = 4+9+16 = 29
    stopifnot(sumOfSquaresOfDigits(365) == 70) # 3^2 + 6^2 + 5^2 = 9+36+25 = 70
    cat("Passed!\n")
}

sumOfSquaresOfDigits <- function(n) {
    tally <- 0
    while (n > 0) {
        digit <- n %% 10
        n <- n %/% 10
        tally = tally + digit^2
    }
    return(tally)
}

test_isHappyNumber <- function() {
    cat("Testing isHappyNumber()...")
    stopifnot(isHappyNumber(-7) == FALSE)
    stopifnot(isHappyNumber(1) == TRUE)
    stopifnot(isHappyNumber(2) == FALSE)
    stopifnot(isHappyNumber(97) == TRUE)
    stopifnot(isHappyNumber(98) == FALSE)
    stopifnot(isHappyNumber(404) == TRUE)
    stopifnot(isHappyNumber(405) == FALSE)
    stopifnot(isHappyNumber(1000) == TRUE)
    cat("Passed!\n")
}

isHappyNumber <- function(n) {
    if (n < 1) {
        return(FALSE)
    } else {
        test = sumOfSquaresOfDigits(n)
        while ((test != 4) & (test!= 1)) {
            test = sumOfSquaresOfDigits(test)
        }
        return(test == 1)
    }
}

test_nthHappyNumber <- function() {
    cat("Testing nthHappyNumber()...")
    stopifnot(nthHappyNumber(1) == 1)
    stopifnot(nthHappyNumber(2) == 7)
    stopifnot(nthHappyNumber(3) == 10)
    stopifnot(nthHappyNumber(4) == 13)
    stopifnot(nthHappyNumber(5) == 19)
    stopifnot(nthHappyNumber(6) == 23)
    stopifnot(nthHappyNumber(7) == 28)
    stopifnot(nthHappyNumber(8) == 31)
    cat("Passed!\n")
}

nthHappyNumber <- function(n) {
    index = 1
    guess = 0
    while (index <= n) {
        guess = guess + 1
        if (isHappyNumber(guess)) {
            index = index + 1
        }
    }
    return(guess)
}

#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here


## Turtle loops!

turtleSquare <- function(s) {
    # Move the turtle to the lower-left corner to start
    xStart = 50 - (s/2)
    yStart = 50 - (s/2)
    turtle_setpos(x = xStart, y = yStart)
    # Now draw the square one side at a time
    for (i in 1:4) {
        turtle_forward(dist = s)
        turtle_right(angle  = 90)
    }
    # Reposition the turtle back to the starting position
    turtle_setpos(x = 50, y = 50)
}

turtle_init()
turtle_do({
    turtleSquare(50)
})


concentricTurtleSquares <- function(spacing = 5) {
    for (i in seq(1, 99, spacing)) {
        turtleSquare(i)
    }
}

turtle_init()
turtle_do({
    concentricTurtleSquares(5)
})




### Bonus 1)

turtleSquareRotated <- function(s, degrees) {
    # Rotate the turtle by the angle
    turtle_left(angle = degrees)
    # Move the turtle to the lower-left corner to start
    radians = (45 - degrees)*(pi / 180)
    xDiff  = (s / sqrt(2)) * sin(radians)
    yDiff  = (s / sqrt(2)) * cos(radians)
    xStart = 50 - xDiff
    yStart = 50 - yDiff
    turtle_setpos(x = xStart, y = yStart)
    # Now draw the square one side at a time
    for (i in 1:4) {
        turtle_forward(dist = s)
        turtle_right(angle  = 90)
    }
    # Reposition the turtle back to the starting position
    turtle_setpos(x = 50, y = 50)
    turtle_right(angle = degrees)
}

turtle_init()
turtle_do({
    turtleSquareRotated(30, 30)
})



### Bonus 2)

turtleSquareStar <- function(s, degreeSpacing = 20) {
    for (i in seq(1, 180, degreeSpacing)) {
        turtleSquareRotated(s, i)
    }
}

turtle_init()
turtle_do({
    turtleSquareStar(50, 20)
})
