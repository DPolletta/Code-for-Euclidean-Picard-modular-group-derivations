%This scripts elminates unnecessary combinations of exponents for elements
%of Gamma_{infinity}.  

p = 0:1;    %vectorize each range of exponents
n = -21:21;
m = -9:9;
l = -5:5;

EXPS = combvec(p,n,m,l);  %vectorize and create all possible combinations of exponents

for i = 1:17974 %for every combination, see which ones satisfy Cygan distance bound.
    if g(EXPS(2,i),EXPS(3,i),EXPS(4,i)) > 8.8681  %Here we are doing exponents for gamma* when p_a,p_b,p_c    
        EXPS(:,i) = [0;0;0;0];                    % are not equal to infinity, we can tune bound depending on case
    else       %set combination to zero vector if 
        continue; %bound not satisfied
    end
end

zerosLocations = ~EXPS;               
idx = (sum(zerosLocations) == size(EXPS,1));
EXPS(:,idx) = []; %remove combinations that did not work by removing zero vector replacements

EXPS = [[0;0;0;0] EXPS]; %add back one zero vector for identity element of Gamma_{infinity}         

clear i p n m l zerosLocations idx
     
function Y = g(n,m,l)
Y = (abs(norm(m+l*cmp11(0,1))^4 + norm((2*n+m+l-m*l)*sqrt(11))^2))^(1/4);
end     
