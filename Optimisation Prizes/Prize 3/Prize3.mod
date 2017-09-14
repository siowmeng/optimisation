# Board is 8x8
set boardLength := 1..8;

# Model each square as a binary variable, 1 = knight is placed, 0 otherwise
var grid {boardLength, boardLength} binary;

# Objective is to minimize the number of knights placed on the chess board
minimize chess: sum {i in boardLength, j in boardLength} grid[i, j];

# For each square, it must be attacked by at least 1 of the knights (or knight is placed on the square)
subject to controlled {i in boardLength, j in boardLength}:
	grid[i, j] + # Knight which is placed on the square
	(if (i - 2) in boardLength and (j - 1) in boardLength then grid[i - 2, j - 1]) +
	(if (i - 2) in boardLength and (j + 1) in boardLength then grid[i - 2, j + 1]) +
	(if (i + 2) in boardLength and (j - 1) in boardLength then grid[i + 2, j - 1]) +
	(if (i + 2) in boardLength and (j + 1) in boardLength then grid[i + 2, j + 1]) +
	(if (i - 1) in boardLength and (j - 2) in boardLength then grid[i - 1, j - 2]) +
	(if (i - 1) in boardLength and (j + 2) in boardLength then grid[i - 1, j + 2]) +
	(if (i + 1) in boardLength and (j - 2) in boardLength then grid[i + 1, j - 2]) +
	(if (i + 1) in boardLength and (j + 2) in boardLength then grid[i + 1, j + 2]) >= 1;
