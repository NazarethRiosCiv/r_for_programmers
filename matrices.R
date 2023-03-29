#### Matrices in R ####

# A matrix is a two-dimensional structure that holds elements
# of the same type

### Initiating a Matrix ###

# We can initiate a matrix using the matrix() function with parameters:
    # data: the data included in the matrix. if left blank, the default is NA
    # nrow: number of rows, default 1
    # ncol: number of rows, default 1

# If data is a single value, the matrix will simply be a matrix of that value
ones <- matrix(data=1, nrow=2, ncol=3)
print(ones)

# If data is a vector, the default process for matrices is to fill down columns
ab <- matrix(data=c('a', 'b'), nrow=2, ncol=3)
print(ab)

# If we want our matrix to fill across rows rather than down columns, we can 
# set byrow = TRUE
abc <- matrix(data=c('a', 'b', 'c'), nrow=4, ncol=3, byrow=TRUE)
print(abc)

# We can check the dimensions of a matrix using dim(), which returns the
# number of rows followed by the number of columns
dim(abc)

### Identity/Diagonal Matrices ###

# We can create an identity matrix using the diag(x) function where x
# is the number of elements along the diagonal. x could also be a vector
# and the resulting matrix would contain the values of the vector

# Identity matrix of size 3
diag(3)

# Diagonal matrix
diag(c(4, 3, 2))

### Subsetting Within a Matrix ###

# Matrices are indexed using brackets with a comma [x, y] where x refers
# to the row position and y refers to the column position

# We can select mulitple rows or columns using the following
test <- matrix(data=0, nrow=6, ncol=6)

# Select the 4th thru 6th rows and the 1st thru 3rd columns
test[4:6, 1:3]

# Select the 4th thru 6th rows and all of the columns
test[4:6,]

# Select the 4th and 6th rows and the 1st thru 3rd columns
test[c(4, 6), 1:3]

# Select all rows of the 2nd and 5th columns
test[, c(2, 5)]

### Linear Algebra Operations ###

mat <- matrix(data=c(4, 8, 2, 4, 9, 3, 5, 1, 2), nrow=3, ncol=3)

# Transpose
t(mat)

# Inverse
solve(mat)

# Matrix Multiplication
mat %*% t(mat)

# Eigenvalues and Eigenvectors
eig <- eigen(mat)

eig$val    # eigenvalues
eig$vec    # eigenvectors

