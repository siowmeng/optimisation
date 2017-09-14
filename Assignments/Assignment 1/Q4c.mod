var s >= 0; # Number of "Stir Fry" Mix produced, it must be a non-negative number
var b >= 0; # Number of "Barbecue" Mix produced, it must be a non-negative number
var h >= 0; # Number of "Hearty Mushrooms" Mix produced, it must be a non-negative number
var v >= 0; # Number of "Veggie Crunch" Mix produced, it must be a non-negative number

# Objective Function: maximise earnings
maximize earnings: 0.22 * s + 0.2 * b + 0.18 * h + 0.18 * v;

# Ingredients Constraints
subject to carrots: 0.0625 * s + 0.05 * b + 0.0625 * v <= 3750;
subject to mushrooms: 0.075 * s + 0.1 * h <= 2000;
subject to greenpeppers: 0.0625 * s + 0.05 * b + 0.075 * h + 0.0625 * v <= 3475;
subject to broccoli: 0.05 * s + 0.075 * b + 0.075 * h + 0.0625 * v <= 3500;
subject to corn: 0.075 * b + 0.0625 * v <= 3750;
