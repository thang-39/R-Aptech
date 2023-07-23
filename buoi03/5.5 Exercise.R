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
chess[6,"Piece"]

#The Player and Piece columns
chess[,c("Player","Piece")]

#All the information about the dark player
chess[c(1:5),]

#The Pieces column; try to extract that as a matrix (Hint: lookup the drop = argument)
chess[, "Piece", drop = FALSE]

#Everything but the Piece column
chess[,-2]

#The 1st and 3rd values on the second row
chess[2, c(1, 3)]
chess[2, c("Player", "Turn")]

#Replace the 3rd value on the 7th row with 3 (Hint: works just like creating an object)
chess[7, 3] <- 3
chess
