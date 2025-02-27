# Giahyue, Ernest
# G30296920

A_x <- 1
A_y <- 1
B_x <- 5
B_y <- 1
C_x <- 5
C_y <- 4
# I've decided to input each point
# Next on a piece of paper I will use the points to find the distance between each point
#Using the pythagorean theorem will determine if these points form a right triangle
#After finding the distance between points (A,B), (A,C), and (B,C), I have found the square root of each point from the distances which will determine if a right traingle forms

distance_1 <- sqrt(16)
distance_2 <- sqrt(25)
distance_3 <- sqrt(9)
# 3,4, and 5 forms a right triangle 

chevy_price <- 29390 #USD
toyota_price <- 24000 #USD
chevy_kWh <- 28 
chevy <- 100 #miles
toyota_eff <- 28 #miles per gallon
avg_elec <- 0.13 #kWh
avg_gas <- 3.00 #per gallon
kev_mpy <- 12000 #miles each year on average
#after creating each object I will now find out how many years he would have to drive each car to determine how many more he would have to drive to be greater than the prive of the Camry
#find the difference in the two cars
diff_cars <- chevy_price - toyota_price
bolt_years <- kev_mpy / diff_cars
#Kevin will have to drive 2 more years and 2 months for the money he saves in fuel savings to be gretaer than the price compared to the Camry
# I will now divide between the average price of gasoline of each car
bolt_gas <- chevy / chevy_kWh
toyota_gas <- bolt_gas * avg_gas 
camry_gas <- toyota_eff * avg_gas
price_of_gas <- camry_gas / toyota_gas 
# the price of gas would have to be $7.84
# Now I will subtract each price of the car by the avg miles then find the difference
kev_bolt_miles <- chevy_price - kev_mpy
kev_camry_miles <- toyota_price - kev_mpy
greater_price_3_years <- kev_bolt_miles - kev_camry_miles
# Kevin would need to drive 5390 miles per year

ern_fav_sh <- "Thor"
thor_super_power <- "Hammer"
install.packages("stringr")
library("stringr")
str_to_lower(ern_fav_sh)
str_to_upper(ern_fav_sh)
str_to_title(thor_super_power)
paste(ern_fav_sh,thor_super_power )

install.packages("remotes")
library("remotes")
remotes::install_github("brooke-watson/BRRR")
BRRR::skrrrahh(4)
BRRR::skrrrahh(11)

library(TurtleGraphics)
turtle_init()
#The turtle will create a x and y plane
turtle_init()
turtle_move(distance = 25, direction = "forward")
turtle_move(distance = 50, direction = "backward")
turtle_reset()
turtle_turn(angle = 90, direction = "right")
turtle_move(distance = 25, direction = "forward")
turtle_move(distance = 50, direction = "backward")
turtle_reset()
#Turtle practice 
turtle_init()
turtle_turn(angle = 45)
turtle_move(50)
turtle_reset()
turtle_turn(angle = 45, direction = "right")
turtle_forward(50)
turtle_reset()
turtle_turn(angle = 135, direction = "left")
turtle_forward(50)
turtle_reset()
turtle_turn(angle = 135, direction = "right")
turtle_forward(50)
turtle_turn(angle = 45, direction = "left")
turtle_forward(70)
turtle_turn(angle = 90, direction = "left")
turtle_forward(70)
turtle_turn(angle = 90, direction = "left")
turtle_forward(70)
turtle_turn(angle = 90, direction = "left")
turtle_forward(70)
turtle_reset()
#I have extra lines of code because I kept messing up, but I don't wanna mess up again by deleting the lines
turtle_init()
turtle_turn(angle = 45, direction = "left")
turtle_move(distance = 50, direction = "backward")
turtle_forward(100)
turtle_turn(angle = 90, direction = "right")
turtle_forward(20)
turtle_turn(angle = 90, direction = "right")
turtle_forward(70)
turtle_turn(angle = 90, direction = "right")
turtle_forward(70)
turtle_turn(angle = 90, direction = "right")
turtle_forward(70)
turtle_reset()
turtle_turn(angle = 225, direction = "right")
turtle_move(distance = 50, direction = "backward")
turtle_forward(100)
turtle_reset()
# Some lines may seem off because I went back on that line and re ran it to reset the turtle angle and adjust


#I never knew you could create your own function, well the way it's created in R.
#ARG seems similiar to ARG in python which we just touched on
#I wanted to use square for my first problem but instad I just type how I got my answer in comments because I didn't know how ti use it in R
#Summing two values seems reasonable in R and makes sense
#Return statements basically returns the answer of the object stored?
#I need to read over cat statements again
#I realize how much coding classes relate to each other, only difference is the language is different
