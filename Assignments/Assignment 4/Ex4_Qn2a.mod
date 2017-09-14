var A1 >= 0; # Number of Product A to produce at Plant 1
var A2 >= 0; # Number of Product A to produce at Plant 2
var B1 >= 0; # Number of Product B to produce at Plant 1
var B2 >= 0; # Number of Product B to produce at Plant 2
var C1 >= 0; # Number of Product C to produce at Plant 1
var C2 >= 0; # Number of Product C to produce at Plant 2

# Objective function: Minimise total cost
maximize profit: 7000 * (A1 + A2) + 5000 * (B1 + B2) + 6000 * (C1 + C2);

# Constraints
subject to Plant1: 3 * A1 + 2 * B1 + 3 * C1 <= 30;
subject to Plant2: 4 * A2 + 3 * B2 + 2 * C2 <= 20;
subject to DemandA: A1 + A2 <= 10;
subject to DemandB: B1 + B2 <= 8;
subject to DemandC: C1 + C2 <= 7;
