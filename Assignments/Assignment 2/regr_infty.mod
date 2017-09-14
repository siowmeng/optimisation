set NUM ordered;				# company number

param comp {NUM};				# compensation
param years {NUM};				# years in position
param change_stock {NUM};		# change in stock price
param change_sales {NUM};		# change in sales
param mba {NUM};				# MBA yes (1) or no (0)

data CEO_Comp.dat;

var tau;
var theta {NUM};
var beta_years;
var beta_change_stock;
var beta_change_sales;
var beta_mba;

minimize objective: tau;

subject to epi {i in NUM}: tau >= theta[i];
subject to abs1 {i in NUM}: theta[i] >= comp[i] - years[i] * beta_years - change_stock[i] * beta_change_stock - change_sales[i] * beta_change_sales - mba[i] * beta_mba;
subject to abs2 {i in NUM}: theta[i] >= years[i] * beta_years + change_stock[i] * beta_change_stock + change_sales[i] * beta_change_sales + mba[i] * beta_mba - comp[i];
