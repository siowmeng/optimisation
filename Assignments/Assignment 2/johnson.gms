VARIABLES AO, AT, AH, AD;
VARIABLES BO, BT, BH, BD;
VARIABLES CO, CT, CH, CD;

VARIABLES Z;

POSITIVE VARIABLES AO, AT, AH, AD;
POSITIVE VARIABLES BO, BT, BH, BD;
POSITIVE VARIABLES CO, CT, CH, CD;

EQUATIONS Objective, Cap_A, Cap_B, Cap_C, Demand_O, Demand_T, Demand_H, Demand_D;

Objective.. Z =E= 17 * (AO + AT + AH + AD) + 3 * AO + 2 * AT + 5 * AH + 7 * AD +
20 * (BO + BT + BH + BD) + 6 * BO + 4 * BT + 8 * BH + 3 * BD +
24 * (CO + CT + CH + CD) + 9 * CO + 1 * CT + 5 * CH + 4 * CD;

Cap_A.. AO + AT + AH + AD =L= 800;
Cap_B.. BO + BT + BH + BD =L= 600;
Cap_C.. CO + CT + CH + CD =L= 700;
Demand_O.. AO + BO + CO =E= 300;
Demand_T.. AT + BT + CT =E= 500;
Demand_H.. AH + BH + CH =E= 400;
Demand_D.. AD + BD + CD =E= 600;

MODEL JOHNSON / ALL /;

SOLVE JOHNSON USING LP MINIMIZING Z;
