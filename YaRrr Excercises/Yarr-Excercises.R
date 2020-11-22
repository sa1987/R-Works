#Create the vector [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] in three ways: once using c(), once using a:b, and once using seq().
 
c(1,2,3,4,5,6,7,8,9,0)
1:10
seq(1,10, by= 1)

#Create the vector [2.1, 4.1, 6.1, 8.1] in two ways, once using c() and once using seq(

c(2.1, 4.1, 6.1, 8.1)
seq(2.1,8.1 , by=2)

#Create the vector [0, 5, 10, 15] in 3 ways: using c(), seq() with a by argument, and seq() with a length.out argument.

seq(0,15,length.out = 4)

#Create the vector [101, 102, 103, 200, 205, 210, 1000, 1100, 1200] using a combination of the c() and seq() functions

c(seq(from = 101, to = 103, by = 3), 
  seq(from = 200, to = 210, by = 5), 
  seq(from = 1000, to = 1200, by = 100))

# A new batch of 100 pirates are boarding your ship and need new swords. 
# You have 10 scimitars, 40 broadswords, and 50 cutlasses that you need to distribute evenly to the 100 pirates as they board. 
# Create a vector of length 100 where there is 1 scimitar, 4 broadswords, and 5 cutlasses in each group of 10. 
# That is, in the first 10 elements there should be exactly 1 scimitar, 4 broadswords and 5 cutlasses. 
# The next 10 elements should also have the same number of each sword (and so on).

swords <- rep(c("scimitar", rep("broadswoard", 4), rep("cutlass", 5)), times = 10)

length(swords)

# Create a vector that repeats the integers from 1 to 5, 10 times. That is [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, .].
# The length of the vector should be 50!

rep(1:5, times=10)


# Now, create the same vector as before, but this time repeat 1, 10 times, then 2, 10 times, etc.,
# That is [1, 1, 1, ., 2, 2, 2, ., . 5, 5, 5]. The length of the vector should also be 50

rep(1:5, each = 10)


#Create a vector containing 50 samples from a Normal distribution with a population mean of 20 and standard deviation of 2.

rnorm(n=50, mean = 20, sd =2)

#Create a vector containing 25 samples from a Uniform distribution with a lower bound of -100 and an upper bound of -50.
runif(n=25, min=-100, max=-50)


#Create a vector that shows the square root of the integers from 1 to 10.

(1:10) ^ .5
##  [1] 1.0 1.4 1.7 2.0 2.2 2.4 2.6 2.8 3.0 3.2
sqrt(1:10)

# 
# There's an old parable that goes something like this. A man does some work for a king and needs to be paid. 
# Because the man loves rice (who doesn't?!), the man offers the king two different ways that he can be paid.
# You can either pay me 100 kilograms of rice, or, you can pay me as follows: get a chessboard and put one grain of rice in the top left square. 
# Then put 2 grains of rice on the next square, followed by 4 grains on the next, 8 grains on the next.and so on, where the amount of rice doubles on each square, 
# until you get to the last square. When you are finished, give me all the grains of rice that would (in theory), fit on the chessboard. 
# The king, sensing that the man was an idiot for making such a stupid offer, immediately accepts the second option. 
# He summons a chessboard, and begins counting out grains of rice one by one. Assuming that there are 64 squares on a chessboard, calculate how many grains of rice the main will receive. If one grain of rice weights 1/64000 kilograms, how many kilograms of rice did he get? Hint: If you have trouble coming up with the answer, imagine how many grains are on the first, second, third and fourth squares, then try to create the vector that shows the number of grains on each square. Once you come up with that vector, you can easily calculate the final answer with the sum() function
# 

# First, let's create a vector of the amount of rice on each square:
# It should be 1, 2, 4, 8, ...
rice <- 2 ^ (0:63)

rice.total <- sum(rice)

# How much does that weigh? Each grain weights 1/6400 kilograms:
rice.kg <- sum(rice) * 1/6400
rice.kg
## [1] 2.9e+15


# Boat sale. Creating the data vectors
boat.names <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
boat.colors <- c("black", "green", "pink", "blue", "blue", 
                 "green", "green", "yellow", "black", "black")
boat.ages <- c(143, 53, 356, 23, 647, 24, 532, 43, 66, 86)
boat.prices <- c(53, 87, 54, 66, 264, 32, 532, 58, 99, 132)
boat.costs <- c(52, 80, 20, 100, 189, 12, 520, 68, 80, 100)

# What was the price of the first boat?
boat.prices[1]
## [1] 53

# What were the ages of the first 5 boats?
boat.ages[1:5]
## [1] 143  53 356  23 647

# What were the names of the black boats?
boat.names[boat.colors == "black"]
## [1] "a" "i" "j"

# What were the prices of either green or yellow boats?
boat.prices[boat.colors == "green" | boat.colors == "yellow"]
## [1]  87  32 532  58

# Change the price of boat "s" to 100
boat.prices[boat.names == "s"] <- 100

# What was the median price of black boats less than 100 years old?
median(boat.prices[boat.colors == "black" & boat.ages < 100])
## [1] 116

# How many pink boats were there?
sum(boat.colors == "pink")
## [1] 1

# What percent of boats were older than 100 years old?
mean(boat.ages < 100)
## [1] 0.6


happy <- c(1, 4, 2, 999, 2, 3, -2, 3, 2, 999)
which(happy %in% 1:5)


# Convert any invalid values(value not b/n 1to 5) in happy to NA
happy[which(!happy %in% 1:5)] <- NA


# Change name of 1st column of df to "a"
# names(df)[1] <- "a"



#Combine the data into a single dataframe. Complete all the following exercises from the dataframe!
  
  piratesurvey <- data.frame(
    name = c("Astrid", "Lea", "Sarina", "Remon", "Letizia", "Babice", "Jonas", "Wendy", "Niveditha", "Gioia"),
    sex = c("F", "F", "F", "M", "F", "F", "M", "F", "F", "F"),
    age = c(30, 25, 25, 29, 22, 22, 35, 19, 32, 21),
    superhero = c("Batman", "Superman", "Batman", "Spiderman", "Batman",
                  "Antman", "Batman", "Superman", "Maggott", "Superman"),
    tattoos = c(11, 15, 12, 5, 65, 3, 9, 13, 900, 0)
  )
#  What is the median age of the 10 pirates?
    
median(piratesurvey$age)

#What was the mean age of female and male pirates separately?

mean(piratesurvey$age[piratesurvey$sex == "F"])
mean(piratesurvey$age[piratesurvey$sex == "M"])

##or

with(piratesurvey, mean(age[sex == "F"]))
