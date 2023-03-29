#### Tibbles and dplyr ####

# The tidyverse is a collection of packages in R that aid with 
# different aspects of data science. 

### Tibbles ###

# The main data structure in the tidyverse is the tibble. Tibbles
# are like dataframes: a collection of rows and named columns. 
# tibbles and dataframes are relatively interchangeable; there
# are very few functions that will only work for dataframes or
# tibbles. A dataframe is converted into a tibble by using
# the as_tibble() function, and a tibble can be converted into
# a data frame using the as.data.frame() function. A dataframe 
# will also be converted to a tibble if a function from the dplyr
# package is used on it.

library(tidyverse)

tib <- as_tibble(read.csv('tib.csv'))

tib

### Mutate ###

# The mutate() function creates a new column in the tibble. The 
# data in this new column can be a set vector of data or some 
# function of an existing variable. A helpful function to use 
# with mutate() is case_when(), which acts like an if-else
# statement. The mutate() operation runs line-by-line, this means
# that if we created a column in the mutate() operation, we could
# immediately use the data in that column to create another column.

mutate(tib, 
    # Create age column
    age = c(20, 21, 22, 19, 20, 22, 19, 18, 21, 20),
    # Create test1_letter columns
    test1_letter = case_when(
        # Assign letter based on test1 score
        test1 < 80 ~ 'C',
        test1 >= 80 & test1 < 90 ~ 'B',
        test1 >= 90 ~ 'A'
    ))

### Select ###

# The select() function subsets to specific columns by name. It allows you
# to easily remove columns from a tibble. 

# Select only quiz1 and quiz2 columns from tib
select(tib, quiz1, quiz2)

# Select everything except names and quiz1 from tib
select(tib, -names, -quiz1)

### Filter ###

# The filter() function subsets to specific rows by the values in a column.

# Filter tib to only rows where test1 > 90
filter(tib, test1 > 90)

### Summarize ###

# The summarise() function reduces one or more variables to a summary value.

# Create a new tibble that has a column for the average of all of 
# quiz1 and the standard deviation of all quiz1
summarise(tib, quiz1_avg = mean(quiz1), quiz1_sd = sd(quiz1))

### Arrange ###

# The arrange() function changes the order of the rows in a tibble based 
# on the row's value in a selected column. Default is in ascending order, 
# but this can be changed using desc(column_name)

# Arrange tib from highest to lowest scores of test1
arrange(tib, desc(test1))

### Piping ###

# The tidyverse utilizes the pipe operator %>% to string multiple functions
# together. The pipe operator takes the tibble output from one function and 
# inputs it as the first argument in the next function. This allows us to 
# create more intricate operations without having to save intermitten steps

tib %>%
    # Make a new tibble that has a column for the 
    # Averages of test1 and test2
    summarize(avg_test1 = mean(test1), avg_test2 = mean(test2)) %>%
    # Add new columns test1_letter and test2_letter
    mutate(
        # Assign test1_letter based on test1 average score
        test1_letter = case_when(
            avg_test1 < 80 ~ 'C',
            avg_test1 >= 80 & avg_test1 < 90 ~ 'B',
            avg_test1 >= 90 ~ 'A'),
        # Assign test2_letter based on test2 average score
        test2_letter = case_when(
            avg_test2 < 80 ~ 'C',
            avg_test2 >= 80 & avg_test2 < 90 ~ 'B',
            avg_test2 >= 90 ~ 'A')) %>%
    # Reorder the columns to be by test1 then test2
    select(avg_test1, test1_letter, avg_test2, test2_letter)




