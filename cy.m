function D = cy(A,B)
D = abs(abs(A(1)-B(1))^4 + abs(A(2)-B(2) + 2*imag(conj(B(1))*A(1)))^2)^(1/4); %cygan distance for boundary points
end
