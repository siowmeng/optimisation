VARIABLES AO, AT, AH, AD, BO, BT, BH, BD, CO, CT, CH, CD, Z;

POSITIVE VARIABLES AO, AT, AH, AD, BO, BT, BH, BD, CO, CT, CH, CD;

EQUATIONS Cost, ACapacity, BCapacity, CCapacity, ODemand, TDemand,
HDemand, DDemand;

Cost.. Z =E=
20 * AO + 19 * AT + 22 * AH + 24 * AD +
26 * BO + 24 * BT + 28 * BH + 23 * BD +
33 * CO + 25 * CT + 29 * CH + 28 * CD;

ACapacity.. AO + AT + AH + AD =L= 800;
BCapacity.. BO + BT + BH + BD =L= 600;
CCapacity.. CO + CT + CH + CD =L= 700;
ODemand.. AO + BO + CO =E= 300;
TDemand.. AT + BT + CT =E= 500;
HDemand.. AH + BH + CH =E= 400;
DDemand.. AD + BD + CD =E= 600;

MODEL GTC / ALL /;

GTC.optfile = 1;     

SOLVE GTC USING LP MINIMIZING Z;
