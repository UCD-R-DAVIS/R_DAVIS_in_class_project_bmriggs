# -- Homework 3
## -- Call "surveys" table

surveys <- read.csv("data/portal_data_joined.csv")

head(surveys)   ### -- visualize "surveys" table

colnames(surveys)   ### -- visualize columns in "surveys"

## -- Select rows 1-5000 and only columns 'species_id', 'weight', and 'plot_type'

surveys_base <- surveys[1:5000, c(6, 9, 13)]

surveys_base  ### -- visualize "surveys_base"

## -- Convert 'species_id and 'plot_type' to factors

surveys_base$species_id 
surveys_base$plot_type

## -- Remove NA's

surveys_base <- na.omit(surveys_base)
surveys_base
nrow(surveys_base)

##-- CHALLENGE

challenge_base <- [surveys_base[,2]>150,]
challenge_base
