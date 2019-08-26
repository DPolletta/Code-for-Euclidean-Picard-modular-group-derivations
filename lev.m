function A = lev(B,C)
A = abs(ctranspose(C)*[0 0 1; 0 1 0; 1 0 0]*B)^2;
end
%This function computes the level between two primitive integral lifts
