#### Exception Handling ###########################################################################

# Unexpected errors require interactive debugging to figure out what went wrong. Some errors, 
# however, are expected, and you want to handle them automatically.


# In R, there are three tools for handling conditions:
#    1. try() gives you the ability to continue execution even when an error occurs
#    2. tryCatch() lets you specify handler functions that control what happens
#       when a condition is signaled
#    3. withCallingHandlers() is a variant of tryCatch() that establishes local 
#       handlers (rarely needed)

## Ignore errors with try() ***********************************************************************

# try() allows execution to continue even after an error has occurred. 

# If you wrap a statement that creates the error in try(), the error message will be printed but 
# the execution will continue:
f2 <- function(x) {
    try(log(x))       # you can suppress the message with try(..., silent=TRUE)
    10
}

f2('a')

try({                 # To pass larger blocks of code, wrap them in {}
    a <- 1
    b <- 'x'
    a + b
})

# You can also capture the output of the try() function. If successful, it will be the last result 
# evaluated in the block (just like a function). If unsuccessful it will be an (invisible) object 
# of class 'try-error':
success <- try(1 + 2)
failure <- try('a' + 'b')

class(success)

class(failure)

# try() is particularly useful when you're applying a function to multiple elements in a list:
letters <- c('a', 'b', 'c')
elements <- list(1:10, c(-1, 10), c(TRUE, FALSE), letters)
results <- lapply(elements, function(x) try(log(x)))
results

## Handle Conditions with tryCatch() **************************************************************

# tryCatch() is a general tool for handling conditions: in addition to errors, you can take 
# different actions for warnings, messages, and interrupts. With tryCatch() you map conditions to 
# handlers, named functions that are called with the condition as an input. If a condition is 
# signaled, tryCatch() will call the first handler whose name matches one of the classes of the 
# condition. 

result <- tryCatch({
    x <- 10
    y <- 'a'
    x * y
}, warning = function(w) {
    # warning handler code
    x <- 10
    y <- 10
    x * y
}, error = function(e) {
    # error handler code
    x <- 10
    y <- 11
    x * y
}, finally = {
    # clean up code
    x <- 10
    y <- 12
    x * y
}
)
