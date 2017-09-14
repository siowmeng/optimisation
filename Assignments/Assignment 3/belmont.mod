var A binary;
var B binary;
var C binary;
var L binary;
var S binary;
var W binary;

minimize objective: A + B + C + L + S + W;

subject to Arlington: A + B + C >= 1;
subject to Belmont: A + B + C + L >= 1;
subject to Cambridge: A + B + C + W >= 1;
subject to Lexington: B + L + S >= 1;
subject to Concord: L + S >= 1;
subject to Winchester: C + W >= 1;
