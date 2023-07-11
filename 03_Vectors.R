
#### Vectors in R #################################################################################

# A vector contains objects that are all the same variable type. Vectors are the most basic data 
# structure in R.

## Initiating a Vector ****************************************************************************

# Vectors can be lists of numbers, character objects, or logical objects:
customers <- c(47, 40, 38, 42, 56, 72, 70)

# The following functions return different properties of a vector:
#   length() returns the length of a vector
#   class()  returns the type of variable in a vector
#   min()    returns the minimum value in a numeric vector
#   max()    returns the maximum value in a numeric vector
#   range()  returns the minimum and maximum values of a numeric vector

length(customers)

class(customers)

min(customers)

max(customers)

range(customers)

## Sub-setting Within a Vector ********************************************************************

# We can select a particular section of a vector using square brackets:
customers[2]                     # returns the second element
customers[2:4]                   # returns second, third, and fourth elements
customers[c(2, 4)]               # returns the second and fourth elements
customers[3:length(customers)]   # returns all elements starting from the third

# The which() function returns the index(s) of which elements meet the given criteria. We can call 
# the which() function within the brackets to select the elements that meet the criteria.

# Print the indexes of days with more than 45 days:
which(customers > 45)

# Print the value of each day with more than 45 customers:
customers[which(customers > 45)]

## Replacing Elements of a Vector *****************************************************************

# We can change a specific element in a vector by assigning a new value to that selected element:
customers[3] <- 25

# We can use the which() function to select specific elements to replace based on specific 
# criteria:
customers[which(customers < 50)] <- 0
