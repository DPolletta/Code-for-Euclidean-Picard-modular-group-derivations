A111 = [-1 0 cmp11(1,-2); 0 1 0; cmp11(-1,2) 0 -12];
A112 = [-2 cmp11(0,-2) 3; 0 -1 cmp11(1,-1); cmp11(-1,2) cmp11(-6,1) cmp11(1,-3)];
A113 = [-3 0 cmp11(1,-2); 0 -1 0; cmp11(-1,2) 0 -4];
A114 = [-4 0 cmp11(1,-2); 0 -1 0; cmp11(-1,2) 0 -3];
A115 = [-5 0 cmp11(-1,2); 0 1 0; cmp11(-1,2) 0 2];
A116 = [-6 0 cmp11(1,-2); 0 -1 0; cmp11(-1,2) 0 -2];
A117 = [-7 0 cmp11(-2,4); 0 1 0; cmp11(-1,2) 0 3];
A118 = [-8 0 cmp11(-3,6); 0 1 0; cmp11(-1,2) 0 4];
A119 = [-9 0 cmp11(4,-8); 0 1 0; cmp11(-1,2) 0 -5];
A1110 = [-10 0 cmp11(-1,2); 0 -1 0; cmp11(-1,2) 0 1];

function y = cmp11(a,b)
y = a + (b)*((1/2)+(1i)*sqrt(11)*(1/2));
end