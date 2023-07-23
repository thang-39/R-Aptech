# Create a 5x5 matrix with the rnorm() function, 
# and a 5x5 matrix with runif(). Create each in a single line of code (Hint: nest the operations)
?runif
matrix1 <- matrix(rnorm(25), nrow = 5)
matrix2 <- matrix(runif(25), nrow = 5)
matrix1
matrix2

# For the two matrices, get the following information; for the first four, save the new values as columns in their corresponding matrixes:
  

#Column averages
col_avg1 <- rbind(matrix1[1:4,], colMeans(matrix1[1:4,]))
col_avg1

col_avg2 <- rbind(matrix2[1:4,], colMeans(matrix2[1:4,]))
col_avg2


#Row averages
row_avg1 <- cbind(matrix1[,1:4], rowMeans(matrix1[,1:4]))
row_avg1

row_avg2 <- cbind(matrix2[,1:4], rowMeans(matrix2[,1:4]))
row_avg2
#Column sums
col_sum1 <- rbind(matrix1[1:4,], colSums(matrix1[1:4,]))
col_sum1

col_sum2 <- rbind(matrix2[1:4,], colSums(matrix2[1:4,]))
col_sum2

#Row sums
row_avg1 <- cbind(matrix1[,1:4], rowSums(matrix1[,1:4]))
row_avg1

row_avg2 <- cbind(matrix2[,1:4], rowSums(matrix2[,1:4]))
row_avg2


#Minimum and maximum value in the matrix
min(matrix1)
max(matrix1)

min(matrix2)
max(matrix2)


#Minimum and maximum value for the 3rd column in each matrix
min(matrix1[,3])
max(matrix1[,3])

min(matrix2[,3])
max(matrix2[,3])

#The means and standard deviations for each matrix 
# (compare the two values; 
# if interested in the mathematics side of things, 
# recreate the matrices a couple of times, 
# and compare the results; can you explain what is happening?)
mean(matrix1)
sd(matrix1)
mean(matrix2)
sd(matrix2)

matrix11 <- matrix(rnorm(25), nrow = 5)
matrix22 <- matrix(runif(25), nrow = 5)
mean(matrix11)
sd(matrix11)
mean(matrix22)
sd(matrix22)



