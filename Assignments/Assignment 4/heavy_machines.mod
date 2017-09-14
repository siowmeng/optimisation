var A1;
var A2;
var B1;
var B2;
var C1;
var C2;

maximize profit: 7000 * (A1 + A2) + 5000 * (B1 + B2) + 6000 * (C1 + C2);

subject to plant1: 3 * A1 + 2 * B1 + 3 * C1 <= 30;
subject to plant2: 4 * A2 + 3 * B2 + 2 * C2 <= 20;
subject to salesA: A1 + A2 <= 10;
subject to salesB: B1 + B2 <= 8;
subject to salesC: C1 + C2 <= 7;

subject to nnA1: A1 >=0;
subject to nnA2: A2 >=0;
subject to nnB1: B1 >=0;
subject to nnB2: B2 >=0;
subject to nnC1: C1 >=0;
subject to nnC2: C2 >=0;
