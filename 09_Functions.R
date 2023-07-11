#### Functions in R Programming ###################################################################

## Global Environment Functions *******************************************************************

# In R, we can define custom functions in the global environment using the function() command. The 
# following is generic code for a function:
#
# our_function <- function(optional_parameters) {
#     code_to_execute
#     return(result)
# }

# Let's look at an example of unit conversion:
test_temp <- c(16.550540, 26.942005, 32.591088, 8.580116, 28.003873, 28.542391, 
               20.976820, 21.173577, 21.048836, 18.769735)

celsius_to_fahrenheit <- function(dat) {
    temp_far <- dat * (9.0 / 5.0) + 32.0
    return(temp_far)
}

celsius_to_fahrenheit(test_temp)

# In R, custom function can only return one object. If we wanted to return multiple objects, we 
# would have to combine them into a single object. This single object could be a data frame or a 
# tibble if the different objects have compatible dimensions. Another option could be to save 
# multiple objects as separate items in a single list.

## Apply ******************************************************************************************

# The apply() function is a kind of shortcut to custom functions. As given in its name, it applies 
# a function to either each or column of a data frame or matrix:
# 
# apply(X, MARGIN, FUN)
#
# The MARGIN specification determines whether the function FUN is applied across
# the rows (1) or down the columns (2) of the object x.

test_mat <- matrix(data=c(1, 2, 1, 2, 1, 2), nrow=2, ncol=3)

# Apply the sum() function over each row (margin value 1):
apply(X=test_mat, MARGIN=1, FUN=sum)

# Apply the sum() function over each column (margin value 2):
apply(X=test_mat, MARGIN=2, FUN=sum)

# The functions we can use in apply() are mean(), median(), sum(), min(), or max(), as well as 
# other existing or user-defined functions. 
