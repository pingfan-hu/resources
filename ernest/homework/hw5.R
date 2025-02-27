# Name:  Giahyue, Ernest
# netID: G30296920

library(TurtleGraphics)

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

test_loopFactorial <- function() {
    cat("Testing loopFactorial()...")
    stopifnot(loopFactorial(3!) == 3*2*1)
    stopifnot(loopFactorial(4!) == 4*3*2*1)
    stopifnot(loopFactorial(5!) == 5*4*3*2*1)
    stopifnot(loopFactorial(2!) == 2*1)
    stopifnot(loopFactorial(0!) == 1)
    cat("Passed!")
}
test_loopFactorial()

isloopFactorial <- function(n){
    n >= 0
    for (i in n){
        if ((i * 0) == 1){
            next
        }
        total <- total * i
        if(total > n){
            total <- total * i
            break
        }
    }
    return(n)
}
loopFactorial(3!)
loopFactorial(4!)
loopFactorial(5!)
loopFactorial(2!)
loopFactorial(0!)

test_largestDigit <- function() {
    cat("Testing largestDigit()...")
    stopifnot(largestDigit(-56) == 6)
    stopifnot(largestDigit(-2005) == 5)
    stopifnot(largestDigit(-119) == 9)
    stopifnot(largestDigit(-23) == 3)
    stopifnot(largestDigit(-10) == 1)
    cat("Passed!")
}
test_largestDigit()

largestDigit <- function(n){
    if (n < 0) { return((abs(n)))}
    return((n)){
        while (n > 0){
            Large_digit < n %% 10
            if (Large_digit > max){
                max <- Large_digit
            }
            n <- n %% 10
        }
        reutrn(max)
    }
    
}
largestDigit(-56)
largestDigit(-2005)
largestDigit(-119)
largestDigit(-23)
largestDigit(-10)

test_numDigits <- function() {
    cat("Testing numDigits()...")
    stopifnot(numDigits(12345) == 5)
    stopifnot(numDigits(0) == 1)
    stopifnot(numDigits(-111) == 3)
    stopifnot(numDigits(9) == 1)
    stopifnot(numDigits(-987654) == 6)
    cat("Passed!")
}
test_numDigits()

numDigits <- function(n){
    count <- 0
    n <- abs(n)
    if (n == 0) return(1)
    while (n > 0) {
        count <- count + 1 
        n <- n %% 10
    }
    return(count)
}

numDigits(12345)
numdigit(0)
numDigits(--111)
numDigits(9)
numDigits(-987654)

test_sumOfSquaresOfDigits <- function() {
    cat("Testing sumOfSquaresOfDigits()...")
    stopifnot(sumOfSquaresOfDigits(3) == 9)
    stopifnot(sumOfSquaresOfDigits(4) == 16)
    stopifnot(sumOfSquaresOfDigits(10) == 1)
    stopifnot(sumOfSquaresOfDigits(5) == 25)
    cat("Passed!")
}
test_sumOfSquaresOfDigits()

sumOfSquaresOfDigits <- function(n) {
    sumof_squares <- 0
    while (n > 0) {
        sumof_digits <- n %% 10
        sumof_squares <- (sumof_squares) + (sumof_digits^2)
        n <- n %% 10
    }
    return(sumof_squares)
}
sumOfSquaresOfDigits(3)
sumOfSquaresOfDigits(4)
sumOfSquaresOfDigits(10)
sumOfSquaresOfDigits(5)

test_isHappyNumber <- function() {
    cat("Testing isHappyNumber()...")
    stopifnot(isHappyNumber(1) == TRUE)
    stopifnot(isHappyNumber(2) == FALSE)
    stopifnot(isHappyNumber(5) == FALSE)
    stopifnot(isHappyNumber(23) == TRUE)
    stopifnot(isHappyNumber(130) == TRUE)
    cat("Passed!\n")
}

test_isHappyNumber()

isHappyNumber <- function(n) {
    if (n < 1) {return(FALSE)}
    while 
}

test_nthHappyNumber <- function() {
    cat("Testing nthHappyNumber()...")
    stopifnot(nthHappyNumber(4) == 13)
    stopifnot(nthHappyNumber(2) == 7)
    stopifnot(nthHappyNumber(8) == 31)
    stopifnot(nthHappyNumber(143) == 1000)
    stopifnot(nthHappyNumber(20) == 100)
    cat("Passed!\n")
}

test_nthHappyNumber()

nthHappyNumber <- function(n) {
    count <- 0
    if (n > 1)
}

#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here

#--------------------------------------------------------------
# Test cases:

#--------------------------------------------------------------
# Turtle problems:

# Write the turtle graphics functions here

turtleSquare <- function(s) {
    # Write code here
}

turtle_init()
turtle_do({
    turtleSquare(50)
})


concentricTurtleSquares <- function(spacing = 5) {
    # Write code here
}

turtle_init()
turtle_do({
    concentricTurtleSquares(5)
})

#--------------------------------------------------------------
# Reflection:
#For this assignment, I had some ups and downs, but overall it was fun
#Creating code for these problems. I couldn't come up with a for loop
#For the turtle problems, COditionals seem very similiar to what we've been
#Doing. The grades example helps me understand it much better
#DeBugging by hand is a great trait to have when coding.Several proffessors
#Has told me this before.


#--------------------------------------------------------------
# Bonus Credit (Optional)
