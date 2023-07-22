# Pictured below is a matrix. 
# Recreate this matrix in at least three different ways. 

#Player  Piece   
#[1,] "dark"  "king"  
#[2,] "dark"  "queen" 
#[3,] "dark"  "pawn"  
#[4,] "dark"  "pawn"  
#[5,] "dark"  "knight"
#[6,] "light" "bishop"
#[7,] "light" "king"  
#[8,] "light" "rook"  
#[9,] "light" "pawn"  
#[10,] "light" "pawn"  


# Hint. Use the dim() function, the matrix() function, and cbind().
Player <- c("dark","dark","dark","dark","dark","light","light","light","light","light")
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess1 <- cbind(Player, piece)
print(chess1)

chess2 <- c("dark","dark","dark","dark","dark","light","light","light","light","light","king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
dim(chess2) <- c(10,2)
print(chess2)

rawData <- c("dark","dark","dark","dark","dark","light","light","light","light","light","king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess3 <- matrix(data =rawData, ncol = 2)
print(chess3)
# Can you think of a faster way to create this matrix?
  
# Assign names to it in two different ways.
colnames(chess3) <- c("Player", "Piece")
print(chess3)

dimnames(chess2) = list(NULL, c("Player", "Piece"))
print(chess2)
# Would using rbind() be practical in this case?
  # Yes
# Create vectors for player and piece information
player <- c("dark", "dark", "dark", "dark", "dark", "light", "light", "light", "light", "light")
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

# Create 10 small vectors, one for each row of the matrix
row1 <- c(player[1], piece[1])
row2 <- c(player[2], piece[2])
row3 <- c(player[3], piece[3])
row4 <- c(player[4], piece[4])
row5 <- c(player[5], piece[5])
row6 <- c(player[6], piece[6])
row7 <- c(player[7], piece[7])
row8 <- c(player[8], piece[8])
row9 <- c(player[9], piece[9])
row10 <- c(player[10], piece[10])

# Combine the 10 small vectors using rbind() to create the matrix
chess_matrix <- rbind(row1, row2, row3, row4, row5, row6, row7, row8, row9, row10)
print(chess_matrix)
# Can you think of a way to make adding a row to the matrix worthwhile?