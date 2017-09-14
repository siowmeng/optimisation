var xF integer >= 0; # Number of First Class Seats
var xB integer >= 0; # Number of Business Class Seats
var xE integer >= 0; # Number of Economy Class Seats
var yHF integer >= 0; # Number of First Class Tickets Sold in High Demand Scenario
var yHB integer >= 0; # Number of Business Class Tickets Sold in High Demand Scenario
var yHE integer >= 0; # Number of Economy Class Tickets Sold in High Demand Scenario
var yMF integer >= 0; # Number of First Class Tickets Sold in Medium Demand Scenario
var yMB integer >= 0; # Number of Business Class Tickets Sold in Medium Demand Scenario
var yME integer >= 0; # Number of Economy Class Tickets Sold in Medium Demand Scenario
var yLF integer >= 0; # Number of First Class Tickets Sold in Low Demand Scenario
var yLB integer >= 0; # Number of Business Class Tickets Sold in Low Demand Scenario
var yLE integer >= 0; # Number of Economy Class Tickets Sold in Low Demand Scenario

# Objective is to maximize revenue minus the expected cost of recourse
maximize revenue: 
	1600 * xF + 1100 * xB + 500 * xE - # First Stage
	0.4 * (1600 * (xF - yHF) + 1100 * (xB - yHB) + 500 * (xE - yHE)) - # Second Stage: High Demand Scenario
	0.3 * (1600 * (xF - yMF) + 1100 * (xB - yMB) + 500 * (xE - yME)) - # Second Stage: Medium Demand Scenario
	0.3 * (1600 * (xF - yLF) + 1100 * (xB - yLB) + 500 * (xE - yLE)); # Second Stage: Low Demand Scenario
	
subject to capacity: 2 * xF + 1.5 * xB + xE = 190; # Total available space = 190 economy seats
subject to highFirst: yHF <= xF;
subject to highFirst2: yHF <= 25; # Demand for First Class Tickets for High Demand Scenario
subject to highBusiness: yHB <= xB;
subject to highBusiness2: yHB <= 60; # Demand for Business Class Tickets for High Demand Scenario
subject to highEconomy: yHE <= xE;
subject to highEconomy2: yHE <= 210; # Demand for Economy Class Tickets for High Demand Scenario
subject to mediumFirst: yMF <= xF;
subject to mediumFirst2: yMF <= 12; # Demand for First Class Tickets for Medium Demand Scenario
subject to mediumBusiness: yMB <= xB;
subject to mediumBusiness2: yMB <= 30; # Demand for Business Class Tickets for Medium Demand Scenario
subject to mediumEconomy: yME <= xE;
subject to mediumEconomy2: yME <= 170; # Demand for Economy Class Tickets for Medium Demand Scenario
subject to lowFirst: yLF <= xF;
subject to lowFirst2: yLF <= 5; # Demand for First Class Tickets for Low Demand Scenario
subject to lowBusiness: yLB <= xB;
subject to lowBusiness2: yLB <= 9; # Demand for Business Class Tickets for Low Demand Scenario
subject to lowEconomy: yLE <= xE;
subject to lowEconomy2: yLE <= 150; # Demand for Economy Class Tickets for Low Demand Scenario
