%this script sets up generators for cusp stabilizer Gamma_infty(2)

J = [0 0 1; 0 1 0; 1 0 0];  %matrix for Hermitian form

T2 = [1 -2 -2; 0 1 2; 0 0 1];  %generators for cusp stabilizer d=2
Ti = [1 cmp(0,1) -1; 0 1 cmp(0,1); 0 0 1];
Tsq2 = [1 0 cmp(0,1); 0 1 0; 0 0 1];
R = [1 0 0; 0 -1 0; 0 0 1];

Pin = [1;0;0]; %lift of infinity
