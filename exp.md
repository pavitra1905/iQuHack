
2. 
$\mathrm{CR}_y(\theta)=(I\otimes R_y(\theta/2))\,\mathrm{CNOT}\,(I\otimes R_y(-\theta/2))\,\mathrm{CNOT}$,
with $R_y(\alpha)=H R_z(\alpha) H$.


3. 

$e^{i\theta Z\otimes Z}=\mathrm{CNOT}\,(I\otimes R_z(2\theta))\,\mathrm{CNOT}$ (up to global phase).

4.

$e^{i\theta(XX+YY)} =
(H\otimes H)\;
\mathrm{CNOT}\,(I\otimes R_z(2\theta))\,\mathrm{CNOT}\;
(H\otimes H),$ 
since \(H X H = Z\) and \(H Y H = -Y\), mapping \(XX+YY \mapsto ZZ\).

5.

$\mathrm{SWAP}=\frac{1}{2}\bigl(I+XX+YY+ZZ\bigr)\;\Rightarrow\;XX+YY+ZZ=2\,\mathrm{SWAP}-I,$ so $e^{i\frac{\pi}{4}(XX+YY+ZZ)} = e^{i\pi/4}\,\mathrm{SWAP}$, i.e. **SWAP up to global phase**

6.

$e^{i\theta(XX+ZI+IZ)} \approx e^{i\theta XX}\,e^{i\theta ZI}\,e^{i\theta IZ}
\quad\text{(1st-order Trotter; }\theta=\pi/7\text{)},$
where $e^{i\theta ZI}$ and $e^{i\theta IZ}$ are single-qubit $R_z(2\theta)$ phases, and $e^{i\theta XX}=(H\!\otimes\!H)\,e^{i\theta ZZ}\,(H\!\otimes\!H)$ uses the ZZ phase-gadget. :contentReference[oaicite:0]{index=0}


8. 

$U=\mathrm{QFT}_2=(I\otimes H)\,\mathrm{CS}\,(H\otimes I),$
where the controlled-\(S\) gate is decomposed using only $\{H,T,T^\dagger,\mathrm{CNOT}\}$.

