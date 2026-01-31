OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// Controlled-Y: q[0] = control, q[1] = target

t q[1];
t q[1];
cx q[0], q[1];
tdg q[1];
tdg q[1];
