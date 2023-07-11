#### Basic Syntax in R ############################################################################

# To run an R script via the command line, try:
# >"C:\Program Files\R\R-4.1.1\bin\Rscript.exe" some_script.R

# If bin is in your path, then try:
# >Rscript some_script.R

## Math Operations ********************************************************************************

# PEMDAS:
25 + 7 / 4
(25 + 7) / 4

# Exponents:
5^2
2^3

## Logical Operators ******************************************************************************

5 > 3

5 < 3

5 == 3
  
5 != 3

# We can join logical operators together using &, &&, |, ||
5 > 3 && 3 > 4
5 > 3 || 3 > 4

# The shorthand operators (& and |) and longhand operators (&& and ||) function the same when 
# valuating individual values. However, when evaluating a vector or list of values, they behave 
# differently:
# 
#     The shorthand operators return TRUE/FALSE for each item in the vector, so the output is a 
#     vector of TRUE/FALSE.
#
#     The longhand operators return a single TRUE/FALSE based on the first item in the 
#     vector/list.

example <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

example < 5 & example > 3

example < 5 && example > 3

## Object Assignment ******************************************************************************

# In R we assign an object with '<-':
minutes_in_year <- 525600
minutes_in_year

# We can also use a single = to assign an object; this is usually used only within function calls 
# for parameters:
minutes_in_year = 60*24*365
minutes_in_year
