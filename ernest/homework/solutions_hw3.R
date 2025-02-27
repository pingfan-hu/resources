# Name:  Last, First
# netID: jph

# I worked with the following classmates on this assignment:
# 1) Name: Last, First
# 2) Name: Last, First

library(TurtleGraphics)

######################################################################
# Place your solutions here
######################################################################

integerSquareRoot <- function(n) {
    stopifnot(n == as.integer(n))
    stopifnot(n > 0)
    return(as.integer(round(n^0.5)))
}

fabricYards <- function(inches) {
    return(ceiling(inches / 36))
}

# Version 1
fabricExcess <- function(inches) {
    return(36*ceiling(inches / 36) - inches)
}

# Version 2 using the fabricYards(inches) function
fabricExcess <- function(inches) {
    return(36*fabricYards(inches) - inches)
}

isPerfectCube <- function(x) {
    absolute = abs(x)
    cubeRoot = absolute^(1/3)
    rounded  = as.integer(round(cubeRoot))
    return(rounded^3 == absolute)
}

distance <- function(x1, y1, x2, y2) {
    return(((x2 - x1)^2 + (y2 - y1)^2)^0.5)
}

triangleArea <- function(x1, y1, x2, y2, x3, y3) {
    a = ((x2 - x1)^2 + (y2 - y1)^2)^0.5
    b = ((x3 - x1)^2 + (y3 - y1)^2)^0.5
    c = ((x3 - x2)^2 + (y3 - y2)^2)^0.5
    s = (a + b + c)/2
    return((s*(s-a)*(s-b)*(s-c))^0.5)
}

# Another version that is extra careful and checks the inputs
kthDigit <- function(x, k) {
    return((abs(x) %/% 10^(k-1)) %% 10)
}

#--------------------------------------------------------------
# ignore_rest
# This comment is for the autograder - it will ignore all code below here

#--------------------------------------------------------------
# Turtle problems:

turtleSquare <- function(s) {
    # Move the turtle to the lower-left corner to start
    xStart = 50 - (s/2)
    yStart = 50 - (s/2)
    turtle_setpos(x = xStart, y = yStart)
    # Now draw the square one side at a time
    turtle_forward(dist = s)
    turtle_right(angle  = 90)
    turtle_forward(dist = s)
    turtle_right(angle  = 90)
    turtle_forward(dist = s)
    turtle_right(angle  = 90)
    turtle_forward(dist = s)
    turtle_right(angle  = 90)
    # Reposition the turtle back to the starting position
    turtle_setpos(x = 50, y = 50)
}

# Run these lines to test the turtle graphics output
turtle_init()
turtleSquare(50)

#--------------------------------------------------------------
# Reflection:

#--------------------------------------------------------------
# Bonus Credit (Optional)

numberOfPoolBalls <- function(n) {
    return(n*(n+1) / 2)
}

turtleTriangle <- function(s) {
    # Move the turtle to the lower-left corner to start
    apothem = s / (2*sqrt(3))
    xStart  = 50 - (s/2)
    yStart  = 50 - apothem
    turtle_setpos(x = xStart, y = yStart)
    # Now draw the triangle one side at a time
    turtle_right(angle  = 30)
    turtle_forward(dist = s)
    turtle_right(angle  = 120)
    turtle_forward(dist = s)
    turtle_right(angle  = 120)
    turtle_forward(dist = s)
    # Reposition the turtle back to the starting position
    turtle_setpos(x = 50, y = 50)
    turtle_right(angle = 90)
}

# Run these lines to test the turtle graphics output
turtle_init()
turtleTriangle(50)











