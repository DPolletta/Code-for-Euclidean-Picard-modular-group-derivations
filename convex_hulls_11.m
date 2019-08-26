%This script generates prism decomposition for d=11
prism_pts11;  %this script allocates values for vertices in convex hull decomposition

C11 = [real(c11(1)) imag(c11(1)) c11(2)];  %here we are converting horospherical coordinates for Cyan ball
C12 = [real(c12(1)) imag(c12(1)) c12(2)];  % centers to 3-dimensional Euclidean coordinates
C13 = [real(c13(1)) imag(c13(1)) c13(2)];   
C14 = [real(c14(1)) imag(c14(1)) c14(2)];
C16 = [real(c16(1)) imag(c16(1)) c16(2)];
C17 = [real(c17(1)) imag(c17(1)) c17(2)];
C31 = [real(c31(1)) imag(c31(1)) c31(2)];
C33 = [real(c33(1)) imag(c33(1)) c33(2)];
C34 = [real(c34(1)) imag(c34(1)) c34(2)];
C41 = [real(c41(1)) imag(c41(1)) c41(2)];
C43 = [real(c43(1)) imag(c43(1)) c43(2)];
C53 = [real(c53(1)) imag(c53(1)) c53(2)];
C92 = [real(c92(1)) imag(c92(1)) c92(2)];
C915 = [real(c915(1)) imag(c915(1)) c915(2)];
C2545 = [real(c2545(1)) imag(c2545(1)) c2545(2)];
C2314 = [real(c2314(1)) imag(c2314(1)) c2314(2)];

Q1 = [real(q1(1)) imag(q1(1)) q1(2)];  %here we are converting horospherical points for convex hull
Q2 = [real(q2(1)) imag(q2(1)) q2(2)];  %decompositions into 3D Euclidean coordinates
Q3 = [real(q3(1)) imag(q3(1)) q3(2)];
Q4 = [real(q4(1)) imag(q4(1)) q4(2)];
Q5 = [real(q5(1)) imag(q5(1)) q5(2)];
Q6 = [real(q6(1)) imag(q6(1)) q6(2)];
Q7 = [real(q7(1)) imag(q7(1)) q7(2)];
Q8 = [real(q8(1)) imag(q8(1)) q8(2)];
Q9 = [real(q9(1)) imag(q9(1)) q9(2)];
Q10 = [real(q10(1)) imag(q10(1)) q10(2)];
Q11 = [real(q11(1)) imag(q11(1)) q11(2)];
Q12 = [real(q12(1)) imag(q12(1)) q12(2)];
Q13 = [real(q13(1)) imag(q13(1)) q13(2)];
Q14 = [real(q14(1)) imag(q14(1)) q14(2)];
Q15 = [real(q15(1)) imag(q15(1)) q15(2)];
Q16 = [real(q16(1)) imag(q16(1)) q16(2)];
Q17 = [real(q17(1)) imag(q17(1)) q17(2)];
Q18 = [real(q18(1)) imag(q18(1)) q18(2)];
Q19 = [real(q19(1)) imag(q19(1)) q19(2)];
Q20 = [real(q20(1)) imag(q20(1)) q20(2)];
Q21 = [real(q21(1)) imag(q21(1)) q21(2)];
Q22 = [real(q22(1)) imag(q22(1)) q22(2)];
Q23 = [real(q23(1)) imag(q23(1)) q23(2)];
Q24 = [real(q24(1)) imag(q24(1)) q24(2)];
Q25 = [real(q25(1)) imag(q25(1)) q25(2)];
Q26 = [real(q26(1)) imag(q26(1)) q26(2)];
Q27 = [real(q27(1)) imag(q27(1)) q27(2)];
Q28 = [real(q28(1)) imag(q28(1)) q28(2)];
Q29 = [real(q29(1)) imag(q29(1)) q29(2)];
Q30 = [real(q30(1)) imag(q30(1)) q30(2)];
Q31 = [real(q31(1)) imag(q31(1)) q31(2)];
Q32 = [real(q32(1)) imag(q32(1)) q32(2)];
Q33 = [real(q33(1)) imag(q33(1)) q33(2)];
Q34 = [real(q34(1)) imag(q34(1)) q34(2)];
Q35 = [real(q35(1)) imag(q35(1)) q35(2)];
Q36 = [real(q36(1)) imag(q36(1)) q36(2)];
Q37 = [real(q37(1)) imag(q37(1)) q37(2)];
Q38 = [real(q38(1)) imag(q38(1)) q38(2)];
Q39 = [real(q39(1)) imag(q39(1)) q39(2)];
Q40 = [real(q40(1)) imag(q40(1)) q40(2)];
Q41 = [real(q41(1)) imag(q41(1)) q41(2)];
Q42 = [real(q42(1)) imag(q42(1)) q42(2)];
Q43 = [real(q43(1)) imag(q43(1)) q43(2)];
Q44 = [real(q44(1)) imag(q44(1)) q44(2)];
Q45 = [real(q45(1)) imag(q45(1)) q45(2)];
Q46 = [real(q46(1)) imag(q46(1)) q46(2)];
Q47 = [real(q47(1)) imag(q47(1)) q47(2)];
Q48 = [real(q48(1)) imag(q48(1)) q48(2)];
Q49 = [real(q49(1)) imag(q49(1)) q49(2)];
Q50 = [real(q50(1)) imag(q50(1)) q50(2)];
Q51 = [real(q51(1)) imag(q51(1)) q51(2)];
Q52 = [real(q52(1)) imag(q52(1)) q52(2)];

X1 = [C11;[1 0 0];Q1;Q2;Q9;Q10;Q7;Q8];  %set up regions defined by convex hull of set of vertices
X2 = [C12;Q33;Q34;Q35;Q36;Q37;Q38;Q39;Q24;Q23;Q32;Q31;Q30;Q44;Q45;Q47;Q48;Q49;Q51;Q52];
X3 = [Q10;Q9;Q17;Q41;Q25;Q16;Q15;Q5;Q7;Q6;Q8;Q14];
X4 = [Q21;Q20;Q18;Q19;Q13;Q11;Q30;Q27;Q26;Q12;Q42;Q44;Q45;Q46;Q49;Q50;Q51;Q52];
X5 = [[1/2 sqrt(11)/2 2*sqrt(11)];Q33;Q34;Q32;Q21;Q31];
X6 = [[1/2 sqrt(11)/2 0];Q3;Q4;Q5;Q15;Q13;Q11;Q12;Q14;Q6];
X7 = [Q21;Q32;Q23;Q20;Q31;Q30];
X8 = [Q25;Q41;Q40;Q39;Q38;Q28;Q16;Q19;Q13;Q15;Q26;Q12;Q14;Q42;Q46];
X9 = [Q17;Q16;Q41;Q40;Q22;Q18;Q19;Q42];
X10 = [C43;Q35;Q36;Q37;Q29;Q30;Q27;Q44];
X11 = [Q1;Q2;Q3;Q4;Q5;Q7;Q6;Q8];
X12 = [Q22;Q40;Q39;Q24;Q18;Q20;Q23;Q42;Q45;Q48;Q50];
X13 = [Q28;Q29;Q37;Q38;Q27;Q26;Q44;Q46;Q47;Q49;Q51];
X14 = [Q30;Q23;Q20;Q44;Q45;Q49];
X15 = [Q42;Q46;Q39;Q38;Q47;Q48;Q50];
X16 = [Q46;Q47;Q48;Q50;Q51;Q52];
X17 = [Q45;Q48;Q50;Q52];

Y1 = {'C11';'[1 0 0]';'Q1';'Q2';'Q9';'Q10';'Q7';'Q8'};  %character string lists of sets of points
Y2 = {'C12';'Q33';'Q34';'Q35';'Q36';'Q37';'Q38';'Q39';'Q24';'Q23';'Q32';'Q31';'Q30';'Q44';'Q45';'Q47';'Q48';'Q49';'Q51';'Q52'};
Y3 = {'Q10';'Q9';'Q17';'Q41';'Q25';'Q16';'Q15';'Q5';'Q7';'Q6';'Q8';'Q14'};
Y4 = {'Q21';'Q20';'Q18';'Q19';'Q13';'Q11';'Q30';'Q27';'Q26';'Q12';'Q42';'Q44';'Q45';'Q46';'Q49';'Q50';'Q51';'Q52'};
Y5 = {'[1/2 sqrt(11)/2 2*sqrt(11)]';'Q33';'Q34';'Q32';'Q21';'Q31'};
Y6 = {'[1/2 sqrt(11)/2 0]';'Q3';'Q4';'Q5';'Q15';'Q13';'Q11';'Q12';'Q14';'Q6'};
Y7 = {'Q21';'Q32';'Q23';'Q20';'Q31';'Q30'};
Y8 = {'Q25';'Q41';'Q40';'Q39';'Q38';'Q28';'Q16';'Q19';'Q13';'Q15';'Q26';'Q12';'Q14';'Q42';'Q46'};
Y9 = {'Q17';'Q16';'Q41';'Q40';'Q22';'Q18';'Q19';'Q42'};
Y10 = {'C43';'Q35';'Q36';'Q37';'Q29';'Q30';'Q27';'Q44'};
Y11 = {'Q1';'Q2';'Q3';'Q4';'Q5';'Q7';'Q6';'Q8'};
Y12 = {'Q22';'Q40';'Q39';'Q24';'Q18';'Q20';'Q23';'Q42';'Q45';'Q48';'Q50'};
Y13 = {'Q28';'Q29';'Q37';'Q38';'Q27';'Q26';'Q44';'Q46';'Q47';'Q49';'Q51'};
Y14 = {'Q30';'Q23';'Q20';'Q44';'Q45';'Q49'};
Y15 = {'Q42';'Q46';'Q39';'Q38';'Q47';'Q48';'Q50'};
Y16 = {'Q46';'Q47';'Q48';'Q50';'Q51';'Q52'};
Y17 = {'Q45';'Q48';'Q50';'Q52'};

k1 = convhulln(X1); %define convex hull pieces of prism
k2 = convhulln(X2);
k3 = convhulln(X3);
k4 = convhulln(X4);
k5 = convhulln(X5);
k6 = convhulln(X6);
k7 = convhulln(X7);
k8 = convhulln(X8);
k9 = convhulln(X9);
k10 = convhulln(X10);
k11 = convhulln(X11);
k12 = convhulln(X12);
k13 = convhulln(X13);
k14 = convhulln(X14);
k15 = convhulln(X15);
k16 = convhulln(X16);
k17 = convhulln(X17);

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
hold on
trisurf(k9,X9(:,1),X9(:,2),X9(:,3),'Facecolor','cyan','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k10,X10(:,1),X10(:,2),X10(:,3),'Facecolor','green','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k11,X11(:,1),X11(:,2),X11(:,3),'Facecolor','blue','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k12,X12(:,1),X12(:,2),X12(:,3),'Facecolor','magenta','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k13,X13(:,1),X13(:,2),X13(:,3),'Facecolor','magenta','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k14,X14(:,1),X14(:,2),X14(:,3),'Facecolor','red','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k15,X15(:,1),X15(:,2),X15(:,3),'Facecolor','black','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k16,X16(:,1),X16(:,2),X16(:,3),'Facecolor','green','FaceAlpha',.3,'EdgeColor','none')
hold on
trisurf(k17,X17(:,1),X17(:,2),X17(:,3),'Facecolor','cyan','FaceAlpha',.3,'EdgeColor','none')


i = 1:3;              %the remainder of the code here generates arrays with sets of three vertices in each
j1 = 1:size(k1,1);    %convex hull piece defining the faces of a triangulation of piece
j2 = 1:size(k2,1);    % here is how we verify that no piece has uncovered parts, by showing each triangular face
j3 = 1:size(k3,1);    % in the triangulation is contained in a neighboring region
j4 = 1:size(k4,1);
j5 = 1:size(k5,1);
j6 = 1:size(k6,1);
j7 = 1:size(k7,1);
j8 = 1:size(k8,1);
j9 = 1:size(k9,1);
j10 = 1:size(k10,1);
j11 = 1:size(k11,1);
j12 = 1:size(k12,1);
j13 = 1:size(k13,1);
j14 = 1:size(k14,1);
j15 = 1:size(k15,1);
j16 = 1:size(k16,1);
j17 = 1:size(k17,1);

A1(j1,i) = Y1(k1(j1,i));
A2(j2,i) = Y2(k2(j2,i));
A3(j3,i) = Y3(k3(j3,i));
A4(j4,i) = Y4(k4(j4,i));
A5(j5,i) = Y5(k5(j5,i));
A6(j6,i) = Y6(k6(j6,i));
A7(j7,i) = Y7(k7(j7,i));
A8(j8,i) = Y8(k8(j8,i));
A9(j9,i) = Y9(k9(j9,i));
A10(j10,i) = Y10(k10(j10,i));
A11(j11,i) = Y11(k11(j11,i));
A12(j12,i) = Y12(k12(j12,i));
A13(j13,i) = Y13(k13(j13,i));
A14(j14,i) = Y14(k14(j14,i));
A15(j15,i) = Y15(k15(j15,i));
A16(j16,i) = Y16(k16(j16,i));
A17(j17,i) = Y17(k17(j17,i));
