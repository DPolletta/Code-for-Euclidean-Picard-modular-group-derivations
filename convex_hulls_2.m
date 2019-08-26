v = sqrt(2);  %This script generates prism decomposition for d=2

c11 = [0 0 0];     %here we are converting horospherical coordinates for Cyan ball
c12 = [0 0 2*v];   %centers to 3-dimensional Euclidean coordinates (this process was improved for d=11)
c13 = [2 0 0];
c14 = [2 0 2*v];
c15 = [0 v 0];
c16 = [0 v 2*v];

q1 = [1 0 0];          %here we are converting horospherical points for convex hull
q2 = [3/2 (1/4)*v 0];  %decompositions into 3D Euclidean coordinates
q3 = [1 (1/2)*v 0];
q4 = [1/2 (3/4)*v 0];
q5 = [1.15 (1/4)*v 0];
q6 = [0 v/2 0];
q7 = [0 v/4 0];
q8 = [1 0 2*v];
q9 = [1 v/8 2*v];
q10 = [3/2 v/4 2*v];
q11 = [1 v/2 2*v];
q12 = [1/2 (3/4)*v 2*v];
q13 = [0 v/2 2*v];
q14 = [1/2 v/2 2*v];
q15 = [0.8 (2/5)*v 2*v];
q16 = [1 0 (15/11)*v];
q17 = [1.1 0 v];
q18 = [2 0 v];
q19 = [0.94 0 (3/4)*v];
q20 = [0 0 (2/3)*v];
q21 = [0 0 (5/8)*v];
q22 = [0 v/4 (2/3)*v];
q23 = [0 v/2 v];
q24 = [0 v v];
q25 = [3/4 (5/8)*v v/2];
q26 = [1.15 0.425*v (14/15)*v];
q27 = [3/4 (4/11)*v v];
q28 = [1 v/4 (3/2)*v];
q29 = [1.1 (2/35)*v (3/4)*v];

X1 = [c11;q1;q5;q3;q7;q19;q21;q29]; %set up regions defined by convex hull of set of vertices
X2 = [c12;q8;q9;q15;q14;q13;q20;q16;q22;q23;q27;q28];
X3 = [c13;q1;q5;q2;q19;q17;q18;q29];
X4 = [c14;q2;q3;q5;q8;q9;q10;q18;q17;q16;q26;q28;q29];
X5 = [c15;q4;q6;q11;q12;q14;q15;q22;q23;q24;q25;q27];
X6 = [c16;q12;q13;q14;q24;q23];
X7 = [q3;q4;q6;q7;q16;q17;q19;q20;q21;q22;q25;q26;q28;q27;q29];
X8 = [q9;q10;q11;q15;q25;q26;q27;q28];

k1 = convhulln(X1); %define convex hull pieces of prism
k2 = convhulln(X2);
k3 = convhulln(X3);
k4 = convhulln(X4);
k5 = convhulln(X5);
k6 = convhulln(X6);
k7 = convhulln(X7);
k8 = convhulln(X8);

trisurf(k1,X1(:,1),X1(:,2),X1(:,3),'Facecolor','red','FaceAlpha',.3,'EdgeColor','none') %plot convex hull pieces
hold on
trisurf(k2,X2(:,1),X2(:,2),X2(:,3),'Facecolor','blue','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k3,X3(:,1),X3(:,2),X3(:,3),'Facecolor','green','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k4,X4(:,1),X4(:,2),X4(:,3),'Facecolor','yellow','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k5,X5(:,1),X5(:,2),X5(:,3),'Facecolor','magenta','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k6,X6(:,1),X6(:,2),X6(:,3),'Facecolor','cyan','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k7,X7(:,1),X7(:,2),X7(:,3),'Facecolor','black','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k8,X8(:,1),X8(:,2),X8(:,3),'Facecolor','red','FaceAlpha',.3,'EdgeColor','none')
plot3(0,v/4 ,(2/3)*v,'.')
hold on
plot3(3/4,(5/8)*v,v/2,'.')
hold on
plot3(1,v/4,(3/2)*v,'.')
hold on
plot3(1.15, (1/4)*v, 0,'.')
hold on
plot3(1.1, 0, v,'.')
hold on
plot3(0.94, 0, (3/4)*v,'.')
%In the d=2 case, the complete covering argument was done by hand, I wrote
%some additional lines of code to make the argument easier in d=11 case
