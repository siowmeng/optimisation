# 4 decision variables
var y1 >= 0;
var y2 >= 0;
var y3 >= 0;
var y4 >= 0;

# Objective Function: maximize
maximize earnings: 0.13 * y1 - 0.13 * y2 + 0.10 * y3 - 0.10 * y4;

# Constraints
subject to con1: 2 * y1 - y2 + 1.5 * y3 - 0.5 * y4 <= 27000;
subject to con2: y1 - y2 + y3 - y4 <= 21000;
subject to con3: 0.3 * y1 - 0.3 * y2 + 0.5 * y3 - 0.5 * y4 <= 9000;
subject to con4: y1 - y2 <= 15000;
subject to con5: y3 - y4 <= 16000;
subject to con6: y1 - y2 >= 0;
subject to con7: y3 - y4 >= 0;
