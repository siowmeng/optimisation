var xC integer >= 0; # Number of furniture sets to purchase from Caroline Woodworks
var xN integer >= 0; # Number of furniture sets to purchase from Nashawtuc Millworks
var xA integer >= 0; # Number of furniture sets to purchase from Adirondack Furnishing
var xL integer >= 0; # Number of furniture sets to purchase from Lancaster Artisan Company
var xD integer >= 0; # Number of furniture sets (First 1000 sets) to purchase from Delaware Mills
var xD2 integer >= 0; # Number of furniture sets (Beyond 1000 sets) to purchase from Delaware Mills
var yC binary; # 1 if there is purchase from Caroline Woodworks, 0 otherwise
var yN binary; # 1 if there is purchase from Nashawtuc Millworks, 0 otherwise
var yL binary; # 1 if there is purchase from Lancaster Artisan Company, 0 otherwise
var yD binary; # 1 if there is purchase (up to first 1000 sets) from Delaware Mills, 0 otherwise
var yD2 binary; # 1 if there is purchase (beyond the first 1000 sets) from Delaware Mills, 0 otherwise

# Big-M value
param M = 10000;

# Objective function: Minimise total cost
minimize cost: 
	10000 * yC + 2500 * xC + 
	20000 * yN + 2450 * xN + 
	2510 * xA + 
	13000 * yL + 2470 * xL +
	9000 * yD + 2530 * xD +
	7000 * yD2 + 2430 * xD2;

# Constraints: Fixed Cost, Capacity and Demand constraints
subject to FixedCostC: xC <= M * yC;
subject to FixedCostN: xN <= M * yN;
subject to FixedCostL: xL <= M * yL;
subject to FixedCostD: xD <= M * yD;
subject to FixedCostD2: xD2 <= M * yD2;
subject to DelawareBelow: 1000 * yD2 <= xD; # yD2 must be zero if xD is lesser than 1000
subject to CapacityC: xC <= 1000;
subject to CapacityN: xN <= 1200;
subject to CapacityA: xA <= 800;
subject to CapacityL: xL <= 1100;
subject to CapacityD1: xD <= 1000;
subject to CapacityD2: xD2 <= 500;
subject to Demand: xC + xN + xA + xL + xD + xD2 = 2000;
