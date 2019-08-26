P121 = [cmp(-1,-1);cmp(-2,2);cmp(2,2)];
P122 = [-3;cmp(-2,2);cmp(2,2)];
P123 = [cmp(1,1);2;cmp(2,-2)];
P124 = [cmp(3,2);2;cmp(2,-2)];

p121 = proj(P121);
p122 = proj(P122);
p123 = proj(P123);
p124 = proj(P124);

A121 = [cmp(-1,-1) cmp(0,1) 1; cmp(-2,2) 3 cmp(0,-1);cmp(2,2) cmp(2,-2) cmp(-1,-1)];
A122 = [-3 cmp(2,2) cmp(2,1); cmp(-2,2) 3 2; cmp(2,2) cmp(2,-2) cmp(1,-2)];
A123 = [cmp(1,1) cmp(0,-1) -1; 2 -1 cmp(0,1); cmp(2,-2) -2 cmp(1,1)];
A124 = [cmp(3,2) cmp(-4,1) -3; 2 cmp(-1,2) cmp(-2,1); cmp(2,-2) cmp(2,2) cmp(1,2)];