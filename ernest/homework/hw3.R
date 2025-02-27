# Name:  Giahyue, Ernest
# netID: G30296920


library(TurtleGraphics)

######################################################################
# Place your solutions here
######################################################################

integerSquareRoot <- function(n) {
    return(floor(n^0.5)))
}

integerSquareRoot(10)

fabricYards <- function(inches) {
    yards_fab <- (ceiling(inches / 36))
    return(yards_fab)
}
fabricYards(1)
fabricYards(36)
fabricYards(37)

fabricExcess <- function(inches) {
    fabric_yards <- ceiling(inches / 36)
    yards_verted <- (fabric_yards * 36 - inches)
    return(yards_verted)
}
fabricExcess(1)
fabricExcess(36)
fabricExcess(37)

isPerfectCube <- function(x = y^3) {
    y <- x
    return(y^1/3 == x^1/3)
}
isPerfectCube(27)
isPerfectCube(16)

distance <- function(x1, y1, x2, y2) {
    return(sqrt(y2- y1)^2 + (x2 - x1)^2)
}
distance(1,2,3,4)

triangleArea <- function(x1, y1, x2, y2, x3, y3) {
# formula = sqrt of s(s-a)(s-b)(s-c)
    a <- distance(x1,y1,x2,y2) # 
    b <- distance(x2,y2,x3,y3)
    c <- distance(x3,y3,x1,y3)
#to get s, add the distance of each and divide by 2
    s <- (a + b + c) / 2
    heron_form <- sqrt(s *(s-a) *(s-b) *(s-c))
    
    return(heron_form)
}
triangleArea(2, 1, 3, 4, 6, 2)

kthDigit <- function(x, k) {
    k <- abs(x) && 10
    return(kthDigit(x))
}
kthDigit(789, 1) 
kthDigit(789, 2)
kthDigit(789, 3)
kthDigit(789, 4)
kthDigit(-789, 1)
#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here

#--------------------------------------------------------------
# Turtle problems:
library(TurtleGraphics)
turtle_init()

turtleSquare <- function(s) {
    turt <- s < 100
    return(turt)
}

# Run these lines to test the turtle graphics output
turtle_init()
turtleSquare(50)

#--------------------------------------------------------------
# Reflection:

#--------------------------------------------------------------
# Bonus Credit (Optional)

numberOfPoolBalls <- function(rows) {
    return(42)
}

turtleTriangle <- function(s) {
    return(42)
}

# Run these lines to test the turtle graphics output
turtle_init()
turtleTriangle(50)

#Basically, from the readings I picked up on if statements which seemed interesting
#else will occur if the if statement isn't true
#else if seemes a little confusing
#I feel like after practicing in class, I will understand more
# I struggled on this homework but I understood the concepts but when it came to
#Creating equations, nothing clicked for some questions


