pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/comparators.circom";

// Input : a , length of 2 .
// Output : c .
// In this exercise , you have to check that a[0] is NOT equal to a[1], if not equal, output 1, else output 0.
// You are free to use any operator you may like . 

// HINT:NEGATION

template NotEqual() {
    signal input a[2];
    signal isEqual <== IsEqual()([a[0], a[1]]);

    signal output c <== 1 - isEqual;
}

component main = NotEqual();