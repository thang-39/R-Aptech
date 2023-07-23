# Lookup the runif() function. 
# Create a 3x4 matrix with 12 random numbers generated 
# using the runif() function; 
# have the matrix be filled our row-by-row, 
# instead of column-by-column.
?runif
randNum <- runif(12,0,12)
mtx <- matrix(randNum, nrow = 3, byrow = T)
mtx
# Name the columns of the matrix uno, dos, tres, cuatro, 
# and the rows x, y, z.
dimnames(mtx) <- list(c("x","y","z"),
                         c("uno", "dos", "tres", "cuatro"))
mtx

# Scale the matrix by 10 and save the result.
mtx_x10 <- mtx * 10
mtx_x10
# Extract a 2x4 matrix from it and save the result.
mtx_2x4 <- mtx_x10[1:2,]
mtx_2x4
# Subtract the smaller matrix from the larger one. Can you do that? Why?
result <- mtx_x10 - mtx_2x4
# Extract a 3x3 matrix from the original matrix and save the result. Try the subtraction again. Can you do that? Why?
mtx_3x3 <- mtx[1:3,1:3]
mtx_3x3
result <- mtx_3x3 - mtx_2x4
# Extract the column called "uno" as a vector from 
# the original matrix and save the result.
# Try the subtraction again. Can you do that? Why?
  
uno <- mtx[,1]
uno
is.vector(uno)
result <- uno - mtx_2x4
result

# Lookup the rnorm() function. Create a new 3x4 matrix 
# with 12 random values generated using the rnorm() function.
?rnorm
ranNum_rnorm <- rnorm(12, mean = 0, sd = 1)
ranNum_rnorm

matrix_3x4 <- matrix(rnorm(12), nrow = 3)
matrix_3x4

# Perform matrix multiplication (using the * sign). 
# Can you do that? How is the operation carried out?
matrix_3x4 * 3

# Perform inner matrix multiplication with the two matrixes.
# Can you do that? Why? Can you think of something to do 
# to make this possible?
matrix_3x4 %*% matrix_3x4

matrix_3x4 %*% t(matrix_3x4)
