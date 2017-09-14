var A binary; # Place ATM at Arlington?
var B binary; # Place ATM at Belmont?
var C binary; # Place ATM at Cambridge?
var L binary; # Place ATM at Lexington?
var S binary; # Place ATM at Somerville?
var W binary; # Place ATM at Winchester?

# Objective function: Minimise the number of ATMs
minimize ATM: A + B + C + L + S + W;

# Constraints: All the town centres must have at least 1 ATM within 10-minute drive
subject to Arlington: A + B + C >= 1;
subject to Belmont: A + B + C + L >= 1;
subject to Cambridge: B + C + W >= 1;
subject to Lexington: B + L + S >= 1;
subject to Somerville: L + S >= 1;
subject to Winchester: C + W >= 1;
