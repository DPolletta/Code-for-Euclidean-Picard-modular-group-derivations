%script for d=2, case p_a=p_c, p_b=infty
assign; %allocate matrices and generators

q = 0; %begin relation count

fileID = fopen('relations_pa_0.txt','w'); %open file to print relations

for i = 2:51 %select matrix
    
    for p = 0:1 %set up exponents for gamma_1
        for n = -19:19
            for m = -3:3
                for l = -4:4
                
                if f(n,m,l) <= 3.4094/sqrt(2)
                    G1 = R^p*Tsq2^n*T2^m*Ti^l;  %if Cygan bound satisfied, set up gamma_1
                    
                    if norm(G1*X{i}*[1;0;0] - X{i}*[1;0;0]) <= 0.0001 ||  norm(G1*X{i}*[1;0;0] + X{i}*[1;0;0]) <= 0.0001
                        %if point equality established up to factor of -1,
                        %set up gamma* element
                        for a1 = 0:1
                            for b1 = -19:19
                                for c1 = -3:3
                                    for d1 = -4:4
                                        
                                        if norm(R^a1*Tsq2^b1*T2^c1*Ti^d1*X{i}^-1*G1*X{i} - X{1}) <= 0.0001 || norm(R^a1*Tsq2^b1*T2^c1*Ti^d1*X{i}^-1*G1*X{i} + X{1}) <= 0.0001
                                           fprintf(fileID,'R^%d*Tsq2^%d*T2^%d*Ti^%d*%s^-1*R^%d*Tsq2^%d*T2^%d*Ti^%d*%s,\r\n',a1,b1,c1,d1,Y{i},p,n,m,l,Y{i});
                                           q = q+1; %if relation satsified, print relation and increase relation count by 1
                                        else
                                            continue;
                                        end
                                    end
                                end
                            end
                        end
                    else
                        continue;
                    end
                else
                    continue;
                end
                end
            end
        end
    end
end

fprintf(fileID,'q = %d',q); %print relation count
