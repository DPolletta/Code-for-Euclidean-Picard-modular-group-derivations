%This script determines v coordinates for rational points of a certain
%depth.  In the code below, we are finding depth 37 points corresponding to
%the scale factor q=2+3Tau, in the case d=11.  Note, this code is executed after
%running pts_in_prism_horiz.m.  This code can be altered to deal with the 
%case d=2 and other depths and q factors.

n = 37;                         %Here, we are working with depth 37 and finding the possible verticle coordinates
z = norm(cmp11(1/37,29/37))^2;  %for the point (1/37)+(29/37)Tau in the case d=11.  These values can be altered
                                %depending on the depth, the complex number
                                %z and the value of d
for b = 0:2*n        %prism height goes to 2*sqrt(d), so numerator can be at most 2*37 in this case
    
    x = (-1)*z + (-10)*(b/n);  %x and y are the coefficients for 1 and Tau respectively, after
    y = (-3/2)*z+(7/2)*(b/n);  %computing the product (q*((-|z|^2+iv)/2). These depend on q and z
    
     if norm(round(x)-x)<=0.00001 && norm(round(y)-y)<=0.00001
         fprintf('b = %d/%d \n',b,n)   %print value, b, in v = b*sqrt(11) if satisfied
     else
         continue;
     end
end