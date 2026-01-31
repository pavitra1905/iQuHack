OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// Controlled-Ry(pi/7)
// q[0] = control, q[1] = target

// Ry(pi/14) ≈ H Rz(pi/14) H
h q[1];
t q[1];        // approx to Rz(pi/14)
h q[1];

cx q[0], q[1];

// Ry(-pi/14) ≈ H Rz(-pi/14) H
h q[1];
tdg q[1];
h q[1];

cx q[0], q[1];

// $\mathrm{CR}_y(\theta)=(I\otimes R_y(\theta/2))\,\mathrm{CNOT}\,(I\otimes R_y(-\theta/2))\,\mathrm{CNOT}$,
with $R_y(\alpha)=H R_z(\alpha) H$.