%for d=11, this script computes the possible scale factor, q, for a
%rational point in the boundary we obtain the bounds -100:100 by graphing
%the norm function and checking the max x,y values in the ellipse
%we only take values of q up to multiplication by a unit +/- 1
for q = 1:45
for a = -100:100
    for b = -100:100
        
        if norm((norm(cmp11(a,b))^2 - q)) <= 0.00001
            fprintf('q = %d, %d + %d(T)\n',q,a,b)
        else
            continue
        end
    end
end
end
