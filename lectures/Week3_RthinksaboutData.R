#Other Data Types
##Lists

c(4, 6, "dog")

a <- list(4, 6, "dog")

class(a)

str(a)

#Data.frames

letters

data.frame(letters)

df <- data.frame(letters)

length(df)

dim(df)

nrow(df)

ncol(df)

#Factors 

animals <- factor(c("pig", "duck", "duck", "goose", "goose"))
animals

class(animals)

levels(animals)

nlevels(animals)


animals <- factor(x = animals, levels = c("goose", "pig", "duck") )
animals

year <- factor(c(1978, 1980, 1934, 1979))
year
class(year)
as.numeric(year)
levels(year)
year <- as.numeric(as.character(year))
as.character(year)
year


as.numeric(animals)
as.character(animals)

