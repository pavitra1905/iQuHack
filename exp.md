
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


