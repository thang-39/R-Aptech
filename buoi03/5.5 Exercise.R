# Requirements: the chess object from the previous exercise.

Player <- c("dark","dark","dark","dark","dark","light","light","light","light","light")
Piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess <- cbind(Player, Piece)
print(chess)

# Transpose the chess matrix,
# and add a row storing the following values: 3, 5, 2, 2, 7, 4, 6, 5, 2, 1
chessTranspose <- t(chess)
chessTranspose
chessTranspose <- rbind(chessTranspose,c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1))
chessTranspose
# Name the row "Turn" and transpose the matrix back to its original orientation.
rownames(chessTranspose)[3] <- "Turn"
chessTranspose
chess <- t(chessTranspose)
chess

# Extract the following values from the chess matrix:
  
#The first piece of the light player
#The Player and Piece columns
#All the information about the dark player
#The Pieces column; try to extract that as a matrix (Hint: lookup the drop = argument)
#Everything but the Piece column
#The 1st and 3rd values on the second row
#Replace the 3rd value on the 7th row with 3 (Hint: works just like creating an object)
