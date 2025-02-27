# Name:  Last, First
# netID: Insert your netID here

# I worked with the following classmates on this assignment:
# 1) Name: Last, First
# 2) Name: Last, First

### 2) Polya problem solving 1 [COLLABORATIVE, 15%]

# Consider the points A, B, and C defined by the following cartesian coordinates:

# Point | `x` | `y`
# ------|-----|-----
# A     |  1  |  1
# B     |  5  |  1
# C     |  5  |  4

# Your task is to find out if the triangle formed by the points A, B, and C
# is a right triangle. Apply Polya's problem solving technique:

# 1. **Understand the problem**: In a code comment, write the question you are
# trying to solve in your own words, then create objects for each relevant piece
# of information provided in the problem statement.
# 2. **Devise a plan**: In code comments, describe the steps you will take in
# your plan to solve the problem.
# 3. **Carry out the plan**: Write code below your comments to carry out your plan.
# 4. **Check your work**: _Examine_ your solution and any intermediate values
# you computed along the way. Do the values make sense (e.g. do you get negative
# numbers when you expected positive numbers)? Is there another way you could
# have solved it to check that you get the same result?

# First, understand the problem - I have these values:
ax <- 1
ay <- 1
bx <- 5
by <- 1
cx <- 5
cy <- 4

# Plan is to compute the Euclidean distance between each point, then use
# Pythagorean theorem to assess if the distances line up to make a
# right triangle

d1 <- sqrt((by - ay)^2 + (bx - ax)^2)
d2 <- sqrt((cy - ay)^2 + (cx - ax)^2)
d3 <- sqrt((cy - by)^2 + (cx - bx)^2)

# The triangle is a right triangle as long as one of the following tests are
# TRUE

test1 <- d3^2 == (d1^2 + d2^2)
test2 <- d1^2 == (d2^2 + d3^2)
test3 <- d2^2 == (d1^2 + d3^2)

test1 | test2 | test3

### 3) Polya problem solving 2 [COLLABORATIVE, 20%]

# Kevin is deciding between purchasing a Chevy Bolt, which sells for $29,390
# (after subsidies), and a Toyota Camry, which sells for $24,000. The Bolt
# efficiency is 28 kWh of electricity per 100 miles while the Camry efficiency
# is 28 miles per gallon (mpg) on average. The average price of electricity (in
# DC, where Kevin lives) is $0.13 / kWh, and the average price of gasoline is
# $2.20 / gallon. Kevin drives 12,000 miles each year on average.

# To help him make a decision about which car to buy, answer the following questions:

# a. How long (in years) would he have to drive the Bolt for the money he saves
# in fuel savings to be greater than the price premium compared to the Camry?

# How many years of driving the bolt would result in fuel savings that are
# greater than the difference in price between the Bolt and Camry?

price_bolt        <- 29390
price_camry       <- 24000
kwh_per_mile_bolt <- 0.28
mpg_camry         <- 28
annual_miles      <- 12000
price_gal_gas     <- 3.00
price_kwh         <- 0.13

# 1) Find the price difference:
price_diff  <- price_bolt - price_camry

# 2) Find the difference in cost per year
annual_cost_bolt  <- annual_miles * kwh_per_mile_bolt * price_kwh
annual_cost_camry <- (annual_miles / mpg_camry) * price_gal_gas
annual_cost_diff  <- annual_cost_camry - annual_cost_bolt

# 3) Divide 2 into 1
years  <- price_diff / annual_cost_diff
years


# b. What would the price of gasoline need to be such that the fuel savings from
# driving the Bolt for 3 years would be greater than the price premium compared
# to the Camry?

# 1) Find total number of miles driven over three years
total_miles <- 3 * annual_miles

# 2) Find the total cost of the bolt
total_cost_bolt <- (total_miles * kwh_per_mile_bolt * price_kwh) + price_bolt

# 3) Find the difference between the total cost of the bolt and the price
#    of the camry
cost_diff <- total_cost_bolt - price_camry

# 4) Divide cost_diff by number of gallons consumed
gallons_consumed_camry <- total_miles / mpg_camry
price_gas_new <- cost_diff / gallons_consumed_camry
round(price_gas_new, 2)



# c. How many miles would Kevin need to drive each year such that the fuel
# savings from driving the Bolt for 3 years would be greater than the price
# premium compared to the Camry?

# 1) Find the price difference:
price_diff  <- price_bolt - price_camry

# 2) Find the cost per mile for each vehicle
costpermile_bolt <- kwh_per_mile_bolt*price_kwh
costpermile_camry <- (1 / mpg_camry)*price_gal_gas

# 3) Find the total number of miles needed for the difference in
#    cost per mile to equal the difference in price
total_miles <- price_diff / (costpermile_camry - costpermile_bolt)

# 4) Answer is total miles / 3 years
total_miles / 3





### 4) Working with strings: the **stringr** library [SOLO, 15%]

hero_name <- "Professor Xavier"
hero_power <- "reads peoples' minds"

# install.packages('stringr')     # Only need to do this once!
library(stringr)

str_to_lower(hero_name) # Converts to all lower case letters
str_to_upper(hero_name) # Converts to all upper case letters
str_to_title(hero_power) # Converts all first letters to upper case

# Merge your super hero’s name and power in a coherent sentence.
paste(hero_name, " ", hero_power, "!", sep = "")





### 5) Installing packages from Github: the **BRRR** library [SOLO, 10%]

# Only need to do this once!
# devtools::install_github("brooke-watson/BRRR")

# My favorite:
BRRR::skrrrahh(24)


### 6) Turtle practice [COLLABORATIVE, 20%]

library(TurtleGraphics)

# a) Load the `TurtleGraphics` library, then initiate your turtle with the
# `turtle_init()` function.

turtle_init()

# b) Read through the following commands (don't run them). In a code comment,
# type a description of what you think the turtle is going to do.

# turtle_init()
# turtle_move(distance = 25, direction = "forward")
# turtle_move(distance = 50, direction = "backward")
# turtle_reset()
# turtle_turn(angle = 90, direction = "right")
# turtle_move(distance = 25, direction = "forward")
# turtle_move(distance = 50, direction = "backward")
# turtle_reset()

# Looks like it will draw a cross, like we did in class.

# d) Using what you've learned about how to manipulate your turtle, write **two
# different solutions** for producing the following image (hint: the length of
# one side of the square is `50` units):

turtle_init()
turtle_setpos(25, 25)
turtle_move(distance = 50, direction = "forward")
turtle_turn(angle = 90, direction = "right")
turtle_move(distance = 50, direction = "forward")
turtle_turn(angle = 90, direction = "right")
turtle_move(distance = 50, direction = "forward")
turtle_turn(angle = 90, direction = "right")
turtle_move(distance = 50, direction = "forward")
turtle_turn(angle = 135, direction = "right")
turtle_move(distance = sqrt(5000), direction = "forward")
turtle_setpos(75, 25)
turtle_turn(angle = -90, direction = "right")
turtle_move(distance = sqrt(5000), direction = "forward")
turtle_reset()
