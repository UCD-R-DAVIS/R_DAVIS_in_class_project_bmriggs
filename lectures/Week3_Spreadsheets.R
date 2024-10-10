surveys <- read.csv("data/portal_data_joined.csv")
nrow(surveys)
ncol(surveys)
class(surveys)
str(surveys)
surveys

summary(surveys)

surveys[1, 5] #specific location in table
1:5 #first 5 rows
surveys[1:5,] #first 5 rows, all columns

surveys[,1] #all rows, first column
dim(surveys[1]) #just columns, need comma to specify rows

colnames(surveys)

surveys[c('record_id', 'year', 'day')]
dim(surveys[c('record_id', 'year', 'day')])

head(surveys) #visualize head of table
head(surveys, n=25) #visulaize head of table to desired number of rows

tail(surveys) #shows bottom (tail) of table

head(surveys["genus"])
head(surveys[["genus"]])

head(surveys['genus',]) #treated as a row
head(surveys[,'genus'])

surveys$genus

surveys$hindfoot_length
class(surveys$hindfoot_length)

install.packages('tidyverse')
library(tidyverse)

?read.csv
t_surveys <- read_csv('data/portal_data_joined.csv')
class(t_surveys)
t_surveys
