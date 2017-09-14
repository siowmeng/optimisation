var A1 >= 0; # Number of Product A to produce at Plant 1
var A2 >= 0; # Number of Product A to produce at Plant 2
var B1 >= 0; # Number of Product B to produce at Plant 1
var B2 >= 0; # Number of Product B to produce at Plant 2
var C1 >= 0; # Number of Product C to produce at Plant 1
var C2 >= 0; # Number of Product C to produce at Plant 2
var yA1 binary; # 1 if Product A is produced at Plant 1, 0 otherwise
var yA2 binary; # 1 if Product A is produced at Plant 2, 0 otherwise
var yB1 binary; # 1 if Product B is produced at Plant 1, 0 otherwise
var yB2 binary; # 1 if Product B is produced at Plant 2, 0 otherwise
var yC1 binary; # 1 if Product C is produced at Plant 1, 0 otherwise
var yC2 binary; # 1 if Product C is produced at Plant 2, 0 otherwise
var yA binary; # 1 if Product A is produced at Plant 1 or Plant 2, 0 otherwise

param M = 100; # Big-M number

# Objective function: Minimise total cost
maximize profit: 7000 * (A1 + A2) + 5000 * (B1 + B2) + 6000 * (C1 + C2);

# Constraints
subject to Plant1: 3 * A1 + 2 * B1 + 3 * C1 <= 30;
subject to Plant2: 4 * A2 + 3 * B2 + 2 * C2 <= 20;
subject to DemandA: A1 + A2 <= 10;
subject to DemandB: B1 + B2 <= 8;
subject to DemandC: C1 + C2 <= 7;
subject to FixedA1: A1 <= M * yA1;
subject to FixedA2: A2 <= M * yA2;
subject to FixedB1: B1 <= M * yB1;
subject to FixedB2: B2 <= M * yB2;
subject to FixedC1: C1 <= M * yC1;
subject to FixedC2: C2 <= M * yC2;
subject to TwoProducts1: yA1 + yB1 + yC1 <= 2;
subject to TwoProducts2: yA2 + yB2 + yC2 <= 2;
subject to ProduceA1: yA >= yA1;
subject to ProduceA2: yA >= yA2;
subject to AtLeast8A: A1 + A2 >= 8 * yA;