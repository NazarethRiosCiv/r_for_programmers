
#### Control Flow and Loops in R ##################################################################

## if, else if, and else Statements ***************************************************************

# The syntax for a basic if statement is as follows:
# if (logical_statement) {
#     block of code
# }

# The logical_statement should either be an object that has been assigned the value TRUE or FALSE, 
# or a statement that returns either TRUE or FALSE. Statements that return T or F are logical 
# operators:
a <- 10

# Print 'a' if it is either less than 5 or greater than 9
if (a < 5 | a > 9) {
    print(a)
}

# If we want certain code to run if a condition is met and other code to run if it is not met, we 
# can add an else statement after if:
a <- 10

if (a >= 8) {
    print('greater than or equal to 8')
} else {
    print('less than 8')
}

# If we have more than 2 cases, we can add else if statements:
a <- 15

if (a <= 5) {
    print('small')
} else if (a > 5 & a <= 10) {
    print('medium')
} else if (a > 10 & a <= 15) {
    print('large')
} else {
    print('extra large')
}

## Nested Statements ******************************************************************************

# If there are sub-conditions within a conditional statement, we can nest an if statement within 
# another if statement:
a <- 10

# First condition
if (a >= 5) {
    # Second condition
    if (a <= 8) {
        # Code to run if first and second conditions are TRUE
        print('a is between 5 and 8')
    # Third condition
    } else if (a <= 11) {
        # Code to run if first and third conditions are TRUE
        print('a is between 9 and 11')
    } else {
        # Code to run if only first condition is TRUE
        print('a is greater than 11')
    }
} else {
    # Code to run if first condition is FALSE
    print('a is less than 5')
}

## Single-line if-else Statements *****************************************************************

# The shorthand function for simple if-else statements is ifelse(). This function is particularly 
# handy when the conditions are straightforward and the resulting output is simple:
# 
# ifelse(logical_statement, if_true, if_false)

a <- 8
group_size <- ifelse(a >= 6, 'large', 'small')
group_size

# If the logical statement of a single-line statement uses a vector, the function will run 
# element-wise and return an object of the same length of the vector.

# Vector of scores
score <- c(2, 6, 10, 12, 4, 8)

# Return 1 if greater than 5, 0 otherwise
greater_than_5 <- ifelse(score > 5, 1, 0)
greater_than_5

## Loops ******************************************************************************************

# Like other languages, loops will repeat through a section of code. The amount of times the code 
# is repeated is either predetermined or until a condition is met.

## For Loops **************************************************************************************

# The syntax for a for loop includes the iterator, which we will call value, and a vector to count 
# through. The number of objects in the vector is how many times the loop will repeat. 
for (value in 1:5) {
    # code to execute
    print(paste(value, 'is greater than', value - 1))
}

# We can also pass a vector of specific values and the function will still repeat for the length of 
# the vector. This is particularly useful if we want to apply code to only specific objects in some 
# data.
vec <- c(1, 1, 1, 1, 1)
# Change 1st, 3rd, 5th elements to 6
for (i in c(1, 3, 5)) {
    vec[i] <- 6
}
vec

# The values we're giving to our iterator do not even have to be numeric. If we passed a vector of 
# character objects, the loop would iterate for the length of the vector.
about_me <- c('my', 'favorite', 'color', 'is', 'yellow', 'and', 'I', 'play', 'soccer')
for (word in about_me) {
    print(word)
}

# We can nest a for loop within another for loop:
mat <- matrix(1, nrow=2, ncol=2)
for (row in 1:2) {
    for (col in 1:2) {
        mat[row, col] <- 0
        print(mat)
    }
}

## While Loops ************************************************************************************

# While loops will continue running until a certain condition is met, or until a logical statement 
# returns FALSE. 
#
# while (condition_to_check) {
#     execute this code
# }

# The variable in condition_to_check has to be defined before the while loop and must change within 
# the loop to make a way that the loop can be terminated. 
a <- 0 
while (a < 10) {
    # increase a by 2
    a <- a + 2
    # print a 
    print(a)
}
