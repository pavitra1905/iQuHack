OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// exp(i*pi/7 * Z ⊗ Z)

cx q[0], q[1];

// Rz(2*pi/7) ≈ T T T T
t q[1];
t q[1];
t q[1];
t q[1];

cx q[0], q[1];
