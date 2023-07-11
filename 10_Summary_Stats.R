#### Summary Statistics in R ######################################################################

# In R, there are many built-in functions that provide useful summary stats

sales <- c(2, 6, 5, 6, 7, 6, 1, 3, 6, 5, 6, 5, 4, 8, 
           4, 7, 4, 4, 3, 3, 4, 4, 3, 1, 3, 7, 5, 8, 7, 2)

weekend <- c(1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 
             1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1)

## Averages ***************************************************************************************

# Some commonly used averages we can calculate for a set of values are mean and median:

# Calculate the mean:
mean(sales)

# Calculate median:
median(sales)

# Note that for both of these functions, we simply entered the name of the numeric vector into the 
# function. If we had a data frame instead, we'd have to specify the column we'd like to compute.

## Range and Spread *******************************************************************************

# Minimum value:
min(sales)

# Maximum value:
max(sales)

# Range of values:
range(sales)

# Standard deviation:
sd(sales)

# Variance:
var(sales)

## Tables *****************************************************************************************

# R has a couple of very useful built-in tables that can be used as summary statistics.

# summary() returns the minimum, maximum, mean, and median values.

# table() returns a table with the count of how many times each value occurred in the data set. 
# This can be helpful to see how the data is distributed within the data set.

# Print summary table:
summary(sales)

# Print frequency table:
table(sales)

# We can include multiple data sets into table(), which will create a cross-table:

# Weekend and sales cross-table:
table(weekend, sales)
