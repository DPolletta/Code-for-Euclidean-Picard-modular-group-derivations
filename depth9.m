P91 =[cmp(0,1);0;3];
P92 =[cmp(0,2);0;3];
P93 =[-1; cmp(2,1);3];
P94 =[cmp(-1,2);cmp(2,1);3];
P95 =[-2; cmp(2,2); 3];
P96 =[cmp(-2,2); cmp(2,2); 3];
P97 =[cmp(-3,1); cmp(4,1); 3];
P98 =[cmp(-3,2);cmp(4,1);3];
P99 =[-3;cmp(-2,1);cmp(1,2)];
P910=[-1;cmp(0,1);cmp(1,2)];
P911=[-4;cmp(0,2);cmp(1,2)];
P912=[cmp(2,1);2;cmp(1,-2)];
P913=[cmp(2,2);cmp(2,-2);cmp(1,-2)];
P914=[cmp(1,3);cmp(2,-3);cmp(1,-2)];

p91 = proj(P91);
p92 = proj(P92);
p93 = proj(P93);
p94 = proj(P94);
p95 = proj(P95);
p96 = proj(P96);
p97 = proj(P97);
p98 = proj(P98);
p99 = proj(P99);
p910 = proj(P910);
p911 = proj(P911);
p912 = proj(P912);
p913 = proj(P913);
p914 = proj(P914);


A91 =[cmp(0,1) 0 1; 0 1 0; 3 0 cmp(0,-1)];
A92 =[cmp(0,2) 0 -1; 0 1 0; 3 0 cmp(0,1)];
A93 =(-1)*[1 0 0; cmp(-2,-1) -1 0; -3 cmp(-2,1) 1];
A94 = (-1)*[cmp(1,-2) cmp(0,-2) cmp(0,1); cmp(-2,-1) -3 2; -3 cmp(-2,1) cmp(1,-1)];
A95 =(-1)*[2 cmp(2,-2) cmp(-3,2); cmp(-2,-2) -5 6; -3 cmp(-2,2) cmp(2,-3)];
A96 =(-1)*[cmp(2,-2) cmp(2,2) cmp(1,2); cmp(-2,-2) 3 2; -3 cmp(2,-2) cmp(2,-1)];
A97=(-1)*[cmp(3,-1) cmp(-2,2) -2; cmp(-4,-1) 5 cmp(2,2); -3 cmp(4,-1) cmp(3,1)];
A98 = (-1)*[cmp(3,-2) cmp(4,-4) cmp(-4,3); cmp(-4,-1) -7 6; -3 cmp(-4,1) cmp(3,-1)];
A99 =[-3 cmp(-2,-1) cmp(1,1); cmp(-2,1) -3 2; cmp(1,2) cmp(0,2) cmp(0,-1)];
A910=[-1 0 cmp(0,1); cmp(0,1) -1 2; cmp(1,2) cmp(0,1) cmp(3,-1)];
A911=[-4 cmp(0,-2) cmp(1,2); cmp(0,2) -1 2; cmp(1,2) -2 cmp(2,-1)];
A912=[cmp(2,1) -2 cmp(1,-2); 2 -1 cmp(0,-2); cmp(1,-2) cmp(0,2) -4];
A913=[cmp(2,2) cmp(-2,2) -3; cmp(2,-2) 3 cmp(2,2); cmp(1,-2) 2 cmp(2,1)];
A914=[cmp(1,3) cmp(0,-2) -4; cmp(2,-3) cmp(-1,2) cmp(4,2); cmp(1,-2) cmp(0,1) cmp(3,1)];



