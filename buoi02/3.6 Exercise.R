# Find what arguments the sample() function takes. We will need that for later.
args(sample)
# Find out what arguments the median function takes. While calling the median for the lvl object, try setting the na.rm = argument to TRUE. 
args(median)
median(lvl,na.rm = T)
# Does R return a different value from the one when na.rm = is set to FALSE (NB: the default value for the na.rm = argument is FALSE; this means that whenever we do not explicitly specify that it must be set to TRUE, it is set to FALSE)? 
  No
# Now try the same command but with the atk variable. 
  atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
  median(atk, na.rm = T)
  median(atk)
# Is the output different? Why do you think that is?