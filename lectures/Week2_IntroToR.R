elephant1_kg <- 3492
elephant2_lb <- 7757

elephant1_lb <- elephant1_kg * 2.2

myelephants <- c(elephant1_lb, elephant2_lb)

which(myelephants == max(myelephants))


# How R thinks about data
getwd()
"C:/Users/bmriggs/Documents/R-Projects/R_DAVIS_in_class_project_bmriggs"

dir.create("./lectures")
dir.create("./homework")

weight_g <- c(50, 60, 65, 82)
weight_one_value <- c(50)

animals <- c("mouse", "cat", "dog")

### Inspection

length(weight_g)
str(weight_g)

### Change Vectors
weight_g <- c(weight_g, 90)
weight_g

#### Challenge

num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")

combined_logical <- c(num_char, num_logical, char_logical, tricky)

#Subsetting

animals <- c("mouse", "rat", "dog", "cat")
animals

animals[2]

animals [c(2, 3)]

animals [c(2, 2)]

##conditional subsetting

weight_g <- c(21, 34, 39, 54, 55)

weight_g > 50

weight_g[weight_g> 50]

## Symobls

# %in%

animals %in% c("rat", "cat", "dog", "duck", "goat")

animals == c("rat", "cat", "dog", "duck", "goat")
