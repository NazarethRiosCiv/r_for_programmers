#### Lists in R ####

# lists are special data structures in R because lists can be filled
# with objects of different types. objects in lists can be individual 
# objects, vectors, matrices, dataframes, or other lists

### Initializing a List ###

# Lists are initiated using the list(x, y, z) function. We can view
# the structure of a list using str()

# Initiate list1

list1 <- list(5, 'b', c(0.5, 0.25), list(1, 1, 0))

str(list1)

# We can get the contents of an object in a list using double-brackets
# [[a]] where a is the index of the desired object. If we were to use 
# single-brackets [a] R would return the whole object at index a rather
# than the contents of the object. 

# Call object 3 with single brackets
list1[3]
typeof(list1[3])      # returns a sublist (still a list object)

# Call just the contents of object 3 with double-brackets
list1[[3]]
typeof(list1[[3]])    # returns the vector stored in the list

# We can also give names to each object in the list. This would allow
# the contents of an object to be called more easily by using $

# Initiate list using names for objects
list2 <- list(a=5, b='b', c=c(0.5, 0.25), d=list(day1=1, day2=1, day3=0))

# View structure of list2
str(list2)

# Print object names c from list2
list2$c

# Accessing data in nested lists follows the pattern of accessing data
# in a regular list.
list1[[4]][[2]]
list2$d$day2

### Adding and Removing from Lists ###

# Add an unnamed object
list1[[5]] <- 45

list1

# Add a named object
list2$e <- 45

list2

# Removing an object is as simple as assigning the value NULL to an object

# Remove an unnamed object
list1[[5]] <- NULL

list1

# Remove a named object
list2$e <- NULL

list2

### Changing Objects in a List ###

# We can make a change to an object in a list by calling the specific object 
# and using the assignment sign <- 

# Change unnamed objects
list1[[2]] <- 'q'

# Change named objects
list2$b <- 'q'

