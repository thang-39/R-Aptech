
# create a list which prints like this: 

# [[1]]
# [1]  1  3  5  7  9 11
#
# [[2]]
# [[2]][[1]]
# [1] "Happy Birthday"
#
# [[2]][[2]]
# [1] "Archery" 
list <- list(c(1,3,5,7,9,11),list("Happy Birthday","Archery"))

list

# extract the numbers as a vector
vector1 <- list[[1]]

# extract the phrase Happy Birthday as a vector
hb <- list[[2]][[1]]


# extract the second item of the second list as a list
list[[2]][2]


# extract the second list as a list
list[[2]]

# extract the numbers item as a list
list[1]

# add 2 to each element in the numbers item
list[[1]]+2


# name the items in the list as "Numbers" and "Phrases"
list <- list(Number = c(1,3,5,7,9,11),
             Phrases = list("Happy Birthday","Archery"))
list


# you can use the $ to extract named items of a list
# if you extract the numbers item from newList with the $, what other extraction method is this equivalent to?
list$Number
list[[1]]

# use the dollar sign to repeat the addition from above 
# (add 2 to each element in the numbers list)
list$Number + 2

# add a new item called "Brands" to the list. It should contain the brands Kellogs, Nike, iPhone
# use either brackets or the dollar sign to do that
list[["Brands"]] <- c("Kellogs", "Nike", "iPhone")
list$Brands <- c("Kellogs", "Nike", "iPhone")
list
# remove the iPhone from the Brands item
list$Brands <- list$Brands[list$Brands != "iPhone"]
list$Brands <- list$Brands[-3]
list
# remove the Brands item from the list
list <- list[-3]
list
