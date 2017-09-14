# sqft(i, j) = sq. ft. to lease in j-th month with leasing period of i months
var sqft11 >= 0;
var sqft21 >= 0;
var sqft31 >= 0;
var sqft41 >= 0;
var sqft51 >= 0;
var sqft12 >= 0;
var sqft22 >= 0;
var sqft32 >= 0;
var sqft42 >= 0;
var sqft52 >= 0;
var sqft13 >= 0;
var sqft23 >= 0;
var sqft33 >= 0;
var sqft43 >= 0;
var sqft53 >= 0;
var sqft14 >= 0;
var sqft24 >= 0;
var sqft34 >= 0;
var sqft44 >= 0;
var sqft54 >= 0;
var sqft15 >= 0;
var sqft25 >= 0;
var sqft35 >= 0;
var sqft45 >= 0;
var sqft55 >= 0;

# Objective Function: minimize cost
minimize cost: 65 * (sqft11 + sqft12 + sqft13 + sqft14 + sqft15) + 100 * (sqft21 + sqft22 + sqft23 + sqft24 + sqft25) + 135 * (sqft31 + sqft32 + sqft33 + sqft34 + sqft35) + 160 * (sqft41 + sqft42 + sqft43 + sqft44 + sqft45) + 190 * (sqft51 + sqft52 + sqft53 + sqft54 + sqft55);

# Required Space constraints
subject to req1: sqft11 + sqft21 + sqft31 + sqft41 + sqft51 >= 30000;
subject to req2: sqft12 + sqft22 + sqft32 + sqft42 + sqft52 + sqft21 + sqft31 + sqft41 + sqft51 >= 20000;
subject to req3: sqft13 + sqft23 + sqft33 + sqft43 + sqft53 + sqft22 + sqft31 + sqft32 + sqft41 + sqft42 + sqft51 + sqft52 >= 40000;
subject to req4: sqft14 + sqft24 + sqft34 + sqft44 + sqft54 + sqft23 + sqft32 + sqft33 + sqft41 + sqft42 + sqft43 + sqft51 + sqft52 + sqft53 >= 10000;
subject to req5: sqft15 + sqft25 + sqft35 + sqft45 + sqft55 + sqft24 + sqft33 + sqft34 + sqft42 + sqft43 + sqft44 + sqft51 + sqft52 + sqft53 + sqft54 >= 50000;

# Non-Negative constraints
#subject to sf11: sqft11 >= 0;
#subject to sf21: sqft21 >= 0;
#subject to sf31: sqft31 >= 0;
#subject to sf41: sqft41 >= 0;
#subject to sf51: sqft51 >= 0;
#subject to sf12: sqft12 >= 0;
#subject to sf22: sqft22 >= 0;
#subject to sf32: sqft32 >= 0;
#subject to sf42: sqft42 >= 0;
#subject to sf52: sqft52 >= 0;
#subject to sf13: sqft13 >= 0;
#subject to sf23: sqft23 >= 0;
#subject to sf33: sqft33 >= 0;
#subject to sf43: sqft43 >= 0;
#subject to sf53: sqft53 >= 0;
#subject to sf14: sqft14 >= 0;
#subject to sf24: sqft24 >= 0;
#subject to sf34: sqft34 >= 0;
#subject to sf44: sqft44 >= 0;
#subject to sf54: sqft54 >= 0;
#subject to sf15: sqft15 >= 0;
#subject to sf25: sqft25 >= 0;
#subject to sf35: sqft35 >= 0;
#subject to sf45: sqft45 >= 0;
#subject to sf55: sqft55 >= 0;

