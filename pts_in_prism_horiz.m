%This script determines z coordinates for rational points of a certain
%depth.  In the code below, we are finding depth 37 points corresponding to
%the scale factor q=2+3Tau, in the case d=11.  This code can be altered to
%deal with the case d=2 and other depths and q factors.  

n = 37;   %m,n both represent depth of interest, in this case 37.
m = 37;   %the depth shows up as denominators for the coefficents for 1 and Tau
          %for d=11, tau is (1+isqrt(11))/2, for d=2 tau is sqrt(2)

for a = 0:n
    for b = 0:m
        x = (2)*(a/n)+(-9)*(b/m);  %x and y are the coefficients for 1 and Tau respectively, after
        y = (3)*(a/n)+(5)*(b/m);   %computing the product (q*z).  These depend on the value q.
        
        if norm(round(x)-x)<=0.00001 && norm(round(y)-y)<=0.00001 && (a/n)+(b/m) <=1
            fprintf('a = %d/%d, b  = %d/%d \n',a,n,b,m)   %check to make sure points are inside prism
        else                                              %for d=11, sum of coefficients must be less than 1
            continue                                      %for d=2, Im(z) <= sqrt(2) - sqrt(2)/2 * Re(z)
        end                                               %print coefficients on 1 and Tau if satisfied
    end
end