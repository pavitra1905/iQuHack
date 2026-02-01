OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// exp(i*pi/4 * (X⊗X + Y⊗Y + Z⊗Z))
// Equals SWAP up to global phase

cx q[0], q[1];
cx q[1], q[0];
cx q[0], q[1];
