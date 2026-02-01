# Clifford+T Compilation for Few-Qubit Unitaries  
*MIT iQuHACK 2026 — Superquantum Challenge*

**Authors:**  
- Pavitra Bhargavi Allamaraju (University of British Columbia)  
- Ryan Ma (University of Waterloo)

---

## Overview
This repository contains Clifford+T circuit implementations for selected few-qubit unitaries from the **iQuHACK 2026 Superquantum Challenge**.  
All circuits are compiled using the restricted gate set:

\[
\{H,\; T,\; T^\dagger,\; \mathrm{CNOT}\}
\]

with an emphasis on **low T-count** and **structural clarity** for fault-tolerant quantum computing.

---

## Implemented Challenges
We provide analytical or semi-analytical solutions for the following tasks:

- **Challenge 1:** Controlled-Y gate  
- **Challenge 2:** Controlled-\(R_y(\pi/7)\)  
- **Challenge 3:** \(e^{i(\pi/7) Z\otimes Z}\)  
- **Challenge 4:** \(e^{i(\pi/7)(X\!X + Y\!Y)}\)  
- **Challenge 5:** \(e^{i(\pi/4)(X\!X + Y\!Y + Z\!Z)}\) (SWAP equivalence)  
- **Challenge 6:** \(e^{i(\pi/7)(X\!X + ZI + IZ)}\) (Trotter baseline)  
- **Challenge 8:** Structured unitary (2-qubit QFT)  
- **Challenge 9:** Structured controlled unitary  

Challenges **7, 10, and 11** involve generic synthesis and are excluded from this repository.

---

## Methods
Key compilation techniques used throughout:
- Pauli-string exponentiation via **phase gadgets**
- Clifford **basis changes** (e.g., Hadamards)
- Algebraic identities (e.g., SWAP = \((I+XX+YY+ZZ)/2\))
- First-order **Lie–Trotter approximations** for non-commuting Hamiltonians

All circuits are provided as **OpenQASM 2.0** files.

---

## Results Summary
| Challenge | T-Count | Operator Norm Distance |
|---------|--------|------------------------|
| 1 | 4 | 1.732 |
| 2 | 2 | 0.224 |
| 3 | 4 | 1.064 |
| 4 | 4 | 1.414 |
| 5 | 0 | \(2.5\times10^{-16}\) |
| 6 | 3 | 1.577 |
| 8 | 3 | 2.000 |
| 9 | 4 | 3.015 |

Lower T-count corresponds to reduced fault-tolerant cost; global phase is ignored by the evaluator.

---

## References
- iQuHACK: https://www.iquhack.com  
- Superquantum: https://superquantum.io  
- Qiskit: https://qiskit.org  
- Ross & Selinger, *Optimal ancilla-free Clifford+T approximation of Z-rotations*, arXiv:1403.2975

---

## License
This project is released for academic and educational use as part of the iQuHACK 2026 hackathon.
