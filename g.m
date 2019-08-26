function Y = g(n,m,l)
Y = (abs(norm(m+l*cmp11(0,1))^4 + norm((2*n+m+l-m*l)*sqrt(11))^2))^(1/4);
end
%expression for cygan distance between p_0 and \gamma(p_0) for d=11 case.
%Learned my lesson and left as unsimplified as possible
