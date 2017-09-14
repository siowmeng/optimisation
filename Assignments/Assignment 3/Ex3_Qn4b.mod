var xC integer >= 0; # Number of furniture sets to purchase from Caroline Woodworks
var xN integer >= 0; # Number of furniture sets to purchase from Nashawtuc Millworks
var xA integer >= 0; # Number of furniture sets to purchase from Adirondack Furnishing
var xL integer >= 0; # Number of furniture sets to purchase from Lancaster Artisan Company
var yC binary; # 1 if there is purchase from Caroline Woodworks, 0 otherwise
var yN binary; # 1 if there is purchase from Nashawtuc Millworks, 0 otherwise
var yL binary; # 1 if there is purchase from Lancaster Artisan Company, 0 otherwise

# Big-M value
param M = 10000;

# Objective function: Minimise total cost
minimize cost: 10000 * yC + 2500 * xC + 20000 * yN + 2450 * xN + 2510 * xA + 13000 * yL + 2470 * xL;

# Constraints: Fixed Cost, Capacity and Demand constraints
subject to FixedCostC: xC <= M * yC;
subject to FixedCostN: xN <= M * yN;
subject to FixedCostL: xL <= M * yL;
subject to CapacityC: xC <= 1000;
subject to CapacityN: xN <= 1200;
subject to CapacityA: xA <= 800;
subject to CapacityL: xL <= 1100;
subject to Demand: xC + xN + xA + xL = 2000;
