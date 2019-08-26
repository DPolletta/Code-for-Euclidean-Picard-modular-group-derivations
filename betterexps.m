%due to the large number of computations in d=11 case, we use this code to
%rule out particular values for exponents in normal form for \gamma element
%that do no satisfy Cygan distance bounds for triples (p_a,p_b,p_c)

assign_11;       %this script sets up list of matrices for \gamma^(11), and generators for cusp stabilizer     
exponents_11;    %this script cycles through combinations for exponents for cusp stabilizer elements,
                 %eliminating the combinations that do not satisfy cygan
                 %bounds
max_n = 0;        
min_n = 0;      %pre-allocate max and min values for exponents
max_m = 0;
min_m = 0;
max_l = 0;
min_l = 0;

for a = 1:5594              %This index is obtained from exponents_11, depending on the bound for the
    for i = 2:260           %particular cusp stabilizer element
        for j = 2:260       %i and j are indices for lists matrices sending infinity to point of interest
            if cy(proj(X{i}^-1*[1;0;0]),proj(R^(EXPS(1,a))*T_v^(EXPS(2,a))*T_1^(EXPS(3,a))*T_t^(EXPS(4,a))*X{j}^-1*[1;0;0])) <= 3.4880
                if max_n <= EXPS(2,a)   %check to see if Cygan bound is satisfied, here we are dealing with the case
                    max_n = EXPS(2,a);  %cy(A_a^-1(infinity), \gamma1(p_b)) <= 3.4880 the bound 3.4880 and
                elseif min_n >= EXPS(2,a) %the inputs for cy(,) are tuned depending on case
                    min_n = EXPS(2,a);
                else
                    continue;
                end
                if max_m <= EXPS(3,a)
                    max_m = EXPS(3,a);       %if statements set new maximum and minimum exponents 
                elseif min_m >= EXPS(3,a)    % depending on if Cygan bound is satisfied
                    min_m = EXPS(3,a);
                else
                    continue;
                end
                if max_l <= EXPS(4,a)
                    max_l = EXPS(4,a);
                elseif min_l >= EXPS(4,a)
                    min_l = EXPS(4,a);
                else
                    continue;
                end               
            else
                continue;
            end
        end
    end
end

fprintf('max_n = %d \n',max_n);     %print exponent bounds
fprintf('min_n = %d \n',min_n);
fprintf('max_m = %d \n',max_m);
fprintf('min_m = %d \n',min_m);
fprintf('max_l = %d \n',max_l);
fprintf('min_l = %d \n',min_l);

function D = cy(A,B)
D = abs(abs(A(1)-B(1))^4 + abs(A(2)-B(2) + 2*imag(conj(B(1))*A(1)))^2)^(1/4);
end

function Y = proj(A)
Y(1) = A(2)/A(3);
Y(2) = 2*imag(A(1)/A(3));
end

function y = cmp11(a,b)
y = a + (b)*((1/2)+(1i)*sqrt(11)*(1/2));
end
