
#### Data Frames in R #############################################################################

# A data frame is like a spreadsheet: a table made up of rows and named columns. Each column can be 
# thought of as a vector because it contains data of one variable type.

## Initiating a Data Frame ************************************************************************

# Data frames are the default data structure when you read in a csv file using read.csv(). This 
# function will automatically use the first row of data as the column names unless otherwise
# specified. 

# We can initiate data frames for data we create using data.frame():

# Initiate data frame
dat <- data.frame(col1=c(1:4),
                  col2=c('a', 'b', 'c', 'd'),
                  col3=1)
dat

# We can use colnames() to get the names of the columns of a data frame. We can also use this 
# function to rename the columns:
colnames(dat)

colnames(dat) <- c('newname1', 'newname2', 'newname3')
dat

colnames(dat) <- c('col1', 'col2', 'col3')
dat

## Sub-setting a Data frame *********************************************************************** 

# Data frames are structured as rows and columns, so one way to access information in a data frame 
# is by using the syntax data[x, y], where x refers to a row index and y a column index:
#    data[x, y] calls the cell that is in the x-th row and y-th column.
#    data[, y]  calls the entire y-th column.
#    data[x, ]  calls the entire x-th row.

# Columns can also be called using the column name dat$col1:

# Call the 2nd row:
dat[2, ]

# Call the 3rd column:
dat[, 3]

# Use name notation:
dat$col3

# Note that when we call entire rows each object still has the name of the column it came from. 
# This means there are multiple ways we can call specific cells:

# Use only index:
dat[2, 3]

# Use column name and item index:
dat$col3[2]

# Use item index and column name:
dat[2, ]$col3

## Multiple Rows or Columns ***********************************************************************

# When using the data[x, y] method, either x or y could be a vector or a series of values. Doing so 
# would call multiple rows or columns. We can also use the column names to select multiple columns. 
# However, this method can be tedious.

# Call 1st through 3rd rows
dat[1:3, ]

# Call 1st and 3rd columns
dat[, c(1, 3)]

# Call 1st and 3rd columns using names
dat[, c('col1', 'col3')]

## Conditional Selection **************************************************************************

# We can use the which() function to call specific rows that meet some logical criteria. 

# Call rows that have col1 > 2
dat[which(dat$col1 > 2), ]

# Call rows that have col2 == 'b' or 'd'
dat[which(dat$col2 == 'b' | dat$col2 == 'd'), ]

## Adding Columns *********************************************************************************

# Once a data frame is created, we can add a column of data by calling the name of the new column 
# using the $ method. Then we assign the contents of the column. The contents of the new column 
# must be in one of the following shapes:
    # A single value that will flood through the whole column
    # A vector whose length is the same as the number of rows
    # A vector whose length is a factor of the number of rows (will repeat)

# Single value:
dat$col4 <- 'b'

# Vector whose length equals the number of rows:
dat$col5 <- c('e', 'f', 'g', 'h')

# Vector whose length is a factor of the number of rows:
dat$col6 <- c(1, 2)

# View the resulting data frame:
dat

## Adding Rows ************************************************************************************

# We can manually append rows to a data frame using rbind(data_frame, new_rows). Similar to adding 
# columns to a data frame, the contents must be in one of the following formats:
    # A single value that will fill across the entire row
    # A vector whose length is the same as the number of columns in the data frame
    # A vector whose length is a factor of the number of columns in the data frame

# Single value that will fill across the entire row:
dat <- rbind(dat, 1)

# Vector whose length equals the number of columns:
dat <- rbind(dat, c(5, 'a', 3, 'e', 1, 'i'))

# Vector whose length is a factor of the number of columns:
dat <- rbind(dat, c('x', 'z'))

# View the resulting data frame:
dat

# In practice, you'd really only add rows if the columns match in terms of data types, so that the 
# column vectors are all of the same type (essentially adding new entries).

## Modifying Specific Values **********************************************************************

# We can modify existing data the same way we can add data in data frames:

# Change the whole 3rd column to equal '!'
dat[, 3] <- '!'

# Change the 4th and 5th rows to equal '?'
dat[4:5, ] <- '?'

# Change the bottom right value to equal '%'
dat$col6[7] <- '%'

# View resulting data frame:
dat

## Removing Data **********************************************************************************

# There are a few methods we can use to remove rows or columns from data frames. The basic idea is 
# that we are reassigning the data frame using a selected subset of the data.

## Specify Rows or Columns to Keep ****************************************************************

# This method is convenient when there are not many rows or columns to keep, or if the rows or 
# columns we want to remove are together in a sequence:

# only keep rows 1 through 3
dat <- dat[1:3, ]

# only keep columns 2 and 4 by name
dat <- dat[, c('col2', 'col4')]

# only keep columns 2 and 4 by index
dat <- dat[, c(2, 4)]

## Specify Rows or Columns to Remove **************************************************************

# This method is convenient when there are not many rows or columns to remove, or if the rows or 
# columns we want to remove are together in a sequence.

# Removes rows 1, 3, and 6
dat <- dat[-c(1, 3, 6), ]

# Removes columns 2 through 5
dat <- dat[, -c(2:5)]

## Specify Rows Using a Logical Statement *********************************************************

# This method is convenient when the rows we want to remove share a common characteristic.

# Keep only rows with '!' in col3
dat <- dat[which(dat$col3 == '!'), ]

# Does the same but by removing the rows without '!' in col3
dat <- dat[-which(dat$col3 != '!'), ]
