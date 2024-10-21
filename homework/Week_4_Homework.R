#Load tidyverse package

library(tidyverse)

#Load csv

surveys <- read.csv("data/portal_data_joined.csv")
surveys

#Subset for weight between 30 & 60, print first 6 rows

surveys %>%
  filter (weight >30 & weight <60)
head(surveys)

#Create a new tibble showing the maximum weight for each species + sex combination and name it biggest_critters.Sort the tibble to take a look at the biggest and smallest species + sex combinations. 

biggest_critters <- surveys %>%
  filter(!is.na(weight)) %>%
  group_by(species_id, sex) %>%
  summarise(max_weight = max(weight))

biggest_critters %>% arrange(max_weight)

biggest_critters %>% arrange(desc(max_weight))

#Try to figure out where the NA weights are concentrated in the data

surveys %>%
  filter(is.na(weight)) %>%
  group_by(species) %>%
  tally () %>%
  arrange(desc(n))

surveys %>%
  filter(is.na(weight)) %>%
  group_by(plot_id) %>%
  tally () %>%
  arrange(desc(n))

surveys %>%
  filter(is.na(weight)) %>%
  group_by(year) %>%
  tally () %>%
  arrange(desc(n))

#Take surveys, remove the rows where weight is NA and add a column that contains the average weight of each species+sex combination to the full surveys dataframe. Then get rid of all the columns except for species, sex, weight, and your new average weight column.

surveys_avg_weight <- surveys %>%
  filter(!is.na(weight)) %>%
  group_by(species_id, sex) %>%
  mutate(avg_weight = mean(weight)) %>%
  select(species_id, sex, weight, avg_weight)

surveys_avg_weight

#Take surveys_avg_weight and add a new column called above_average that contains logical values stating whether or not a row’s weight is above average for its species+sex combination

surveys_avg_weight <- surveys_avg_weight %>%
  mutate(above_average = weight>avg_weight)

surveys_avg_weight


