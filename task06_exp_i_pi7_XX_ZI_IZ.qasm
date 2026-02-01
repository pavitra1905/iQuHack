OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];

// exp(i*pi/7 * (XX + ZI + IZ))
// 1st-order Trotter: exp(iθXX) exp(iθZI) exp(iθIZ), θ = pi/7
// Approximate Rz(2θ)=Rz(2*pi/7) using a single T (since T ~ Rz(pi/4) up to global phase)

// exp(iθ XX) 
// XX = (H⊗H) ZZ (H⊗H)
h q[0];
h q[1];

cx q[0], q[1];
t q[1];              // ~ Rz(2*pi/7) coarse
cx q[0], q[1];

h q[0];
h q[1];

// exp(iθ ZI) 
t q[0];              // ~ Rz(2*pi/7) on qubit 0 (coarse)

// exp(iθ IZ)
t q[1];              // ~ Rz(2*pi/7) on qubit 1 (coarse)
