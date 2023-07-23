# Requirements: the chess matrix from Exercise 11.
Player <- c("dark","dark","dark","dark","dark","light","light","light","light","light")
Piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess <- cbind(Player, Piece)
print(chess)

# Save the Piece column of the matrix as a vector.
piece <- chess[,"Piece"]
piece

# Create a factor from the vector.
piece_factor <- factor(piece)
piece_factor

# Organize the levels in the following way but do not order them:
# King, Queen, Rook, Bishop, Knight, Pawn.
piece_factor <- factor(piece,
                       levels=c("king", "queen", "rook", "bishop", "knight", "pawn"))
piece_factor

# Rename the levels with just their initial letters.
# Order the levels in the way specified above.
piece_factor2 <- factor(piece, order = T,
                       levels=c("king", "queen", "rook", "bishop", "knight", "pawn"),
                       labels = c("K","Q","R","B","K","P"))

str(piece_factor2)
