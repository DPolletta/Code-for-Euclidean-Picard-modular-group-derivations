Tau = cmp11(0,1);  %allocate Tau value

J = [0 0 1; 0 1 0; 1 0 0];  %matrix for Hermitian form

R = [1 0 0; 0 -1 0; 0 0 1];  %generators for cusp stabilizer d=11
T_1 = [1 -1 Tau-1; 0 1 1; 0 0 1];
T_t = [1 -conj(Tau) Tau-2; 0 1 Tau; 0 0 1];
T_v = [1 0 2*Tau-1; 0 1 0; 0 0 1];

Pin = [1;0;0];  %lift of infinity
