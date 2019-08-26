function D = cy2(A,B)
D = abs((abs(A(1)-B(1))^2+(0.3015114))^2 + abs(A(2)-B(2) + 2*imag(conj(B(1))*A(1)))^2)^(1/4);
end
%Cygan distance for point on boundary and point at height u. Here, the
%factor .3016 corresponds to ucov for d=11, we can tune this parameter
%depending on which case of d we are in
