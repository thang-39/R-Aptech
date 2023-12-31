# Create a vector s that stores the number 
# sequence 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30.
# Use the seq() command to do that.
s <- seq(2, 30, by = 2)
# Check the attributes of s.
attributes(s)
class(s)
dim(s)
# Does it have any dimensions?
  
# Give it dimensions. Try specifying 3 rows and 5 columns.
dim(s) <- c(3,5)
# What happens if we try to go beyond the traditional height and width properties 
# and specify a value for depth, too. 
# Let's create a hypercube that has 1 row, 3 columns and 5 "slices".
dim(s) <- c(1,3,5)
print(s)
# Try assigning the following dimensions to s: 1, 3, 5.
dim(s) <- c(1,3,5)
# Can you do more than that? Do you think this could be useful for something?
dim(s) <- c(1,1,3,5)
print(s)
