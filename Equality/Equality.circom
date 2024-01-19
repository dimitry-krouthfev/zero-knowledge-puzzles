pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/comparators.circom";

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

template Equality() {
   signal input a[3];

   signal one <== IsEqual()([a[0], a[1]]);
   signal two <== IsEqual()([a[1], a[2]]);

   signal output c <== one * two;
}

component main = Equality();