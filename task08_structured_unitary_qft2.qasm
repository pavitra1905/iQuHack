OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// 2-qubit QFT

// H on most significant qubit
h q[0];

// Controlled-S gate (control q[0], target q[1])
// CS = diag(1,1,1,i)

// Decomposition using only H, T, Tdg, CNOT
t q[1];
cx q[0], q[1];
tdg q[1];
cx q[0], q[1];
t q[0];

// H on least significant qubit
h q[1];
