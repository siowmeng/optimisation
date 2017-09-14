var s >= 0; # Number of special risk insurance to sell, it must be a non-negative number
var m >= 0; # Number of mortgages to sell, it must be a non-negative number

# Objective Function: maximise earnings
maximize profit: 5 * s + 2 * m;

# Work Requirements Constraints
subject to underwriting: 3 * s + 2 * m <= 2400;
subject to administration: m <= 800;
subject to claims: 2 * s <= 1200;