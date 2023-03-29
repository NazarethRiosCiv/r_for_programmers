#### Variable Types in R ####

### Numeric ###

# A numeric object is a number, with or without a decimal point.
# A non-numeric object can be made a numeric object with as.numeric()
as.numeric('47')

### Character ###

# A character object can be one or more letters (strings).
# Numeric objects can be turned into character objects with 
# the as.character() function.
'A'
"ABC"
as.character(47)

### Logical ###

# Logical object can either be TRUE or FALSE with all caps
# they can also just be T or F. Logical objects can be summed
# like numeric objects.
logits <- c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE)
sum(logits)     # total number of TRUE
mean(logits)    # proportion of TRUE

### NA ###

# An object with a name and no contents is filled with an NA.
# By default these are logical objects, however they can be 
# made into a numeric/character object
null_value <- NA
print(null_value) 

### Vectors ###

# Vectors are lists of objects that are all of the same type.
# Vectors can be lists of numbers, characters, or logicals
one_five <- c(1, 2, 3, 4, 5)
print(one_five)
class(one_five)

# You can use : as a shorthand for creating a vector that is a
# sequence of integers.
one_five_short <- 1:5
print(one_five_short)

### Variable Types ###

# The function class() is helpful to check the variable type of 
# a given object.

# Individual elements
class(2000)
class(NA)
class('apple')

# Vectors
results <- c(F, T, T, F)
class(results)
class(c(19, 21, 25, 30))
class(c('Hello', 'World'))

