%This script allocates values for centers of Cygan balls and vertices in
%convex hull decomposition for D^(2)_{infinity}

v = sqrt(2);

c11 = [0;0];              %allocate values for centers of Cygan balls
c12 = [0;2*v];
c13 = [2;0];
c14 = [2;2*v];
c15 = [cmp(0,1);0];
c16 = [cmp(0,1);2*v];
c31 = [cmp(2/3,1/3);(2/3)*v];
c34 = [cmp(4/3,1/3);2*v];

q1 = [1;0];                     %allocate values for vertices in convex hull
q2 = [cmp(3/2,1/4);0];          %pieces
q3 = [cmp(1,1/2);0];
q4 = [cmp(1/2,3/4);0];
q5 = [cmp(1.15,1/4);0];
q6 = [cmp(0,1/2);0];
q7 = [cmp(0,1/4);0];
q8 = [1;2*v];
q9 = [cmp(1,1/8);2*v];
q10 = [cmp(3/2,1/4);2*v];
q11 = [cmp(1,1/2);2*v];
q12 = [cmp(1/2,3/4);2*v];
q13 = [cmp(0,1/2);2*v];
q14 = [cmp(1/2,1/2);2*v];
q15 = [cmp(0.8,2/5);2*v];
q16 = [1;(15/11)*v];
q17 = [1.1;v];
q18 = [2;v];
q19 = [0.94;(3/4)*v];
q20 = [0;(2/3)*v];
q21 = [0;(5/8)*v];
q22 = [cmp(0,1/4);(2/3)*v];
q23 = [cmp(0,1/2);v];
q24 = [cmp(0,1);v];
q25 = [cmp(3/4,5/8);v/2];
q26 = [cmp(1.15,0.425);(14/15)*v];
q27 = [cmp(3/4,4/11); v];
q28 = [cmp(1,1/4); (3/2)*v];
q29 = [cmp(1.07,2/35); (3/4)*v];
