OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// Structured unitary 2
// Controlled-(H S) up to global phase

// Phase on target
t q[1];
t q[1];

// Controlled-H 
h q[1];
cx q[0], q[1];
h q[1];

// Undo phase
tdg q[1];
tdg q[1];
