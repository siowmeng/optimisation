set NUM ordered;	# company number

param comp {NUM};	# compensation
param years {NUM};	# years in position
param change_stock {NUM};	# change in stock price
param change_sales {NUM};	# change in sales
param mba {NUM};	# MBA yes (1) or no (0)

data CEO_Comp.dat;

var theta {NUM}; # The 50 auxiliary variables theta introduced
var beta_years;
var beta_stock;
var beta_sales;
var beta_mba;

# Objective Function
minimize residuals: sum {i in NUM} theta[i];

# Constraints for theta
subject to constr1 {i in NUM}: theta[i] >= comp[i] - years[i] * beta_years - change_stock[i] * beta_stock 
											- change_sales[i] * beta_sales - mba[i] * beta_mba;

subject to constr2 {i in NUM}: theta[i] >= years[i] * beta_years + change_stock[i] * beta_stock 
											+ change_sales[i] * beta_sales + mba[i] * beta_mba - comp[i];
