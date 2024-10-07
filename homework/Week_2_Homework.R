# -- Homework Script

set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2

## -- Remove NAs

prob1 <- hw2[!is.na(hw2)]

prob1      #visualize prob1 vector in console

## -- Selecting integers between 14 and 38

prob1 <- prob1[prob1 > 14 & prob1 < 38]

prob1      #visualize prob1 vector in console

## -- multiply by 3

times3 <- prob1 * 3

times3     #visualize times3 vector in console

# -- Add 10 to entire vector

plus10 <- times3 + 10

plus10     #visualize plus10 vector in console

## -- Select every other number

final <- plus10[c(TRUE, FALSE)]

final      #visualize final vector
