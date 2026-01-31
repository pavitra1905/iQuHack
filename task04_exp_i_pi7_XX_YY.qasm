OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// exp(i*pi/7 * (X⊗X + Y⊗Y))

// Change basis: XX + YY → ZZ
h q[0];
h q[1];

cx q[0], q[1];

// Rz(2*pi/7) ≈ 4 T (coarse Clifford+T approximation)
t q[1];
t q[1];
t q[1];
t q[1];

cx q[0], q[1];

// Undo basis change
h q[0];
h q[1];
