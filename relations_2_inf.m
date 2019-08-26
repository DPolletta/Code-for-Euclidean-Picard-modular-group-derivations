%script for d=2, case p_c = infinity
assign; %allocate matrices and generators

q = 0; %begin count for number of relations

fileID = fopen('relations_inf.txt','w'); %open file to print relations

for p = 0:1
    for n = -19:19
        for m = -3:3
            for l = -4:4  %establish exponents for gamma_1
                
                if f(n,m,l) <= 3.4730/sqrt(2)
                    G1 = R^p*Tsq2^n*T2^m*Ti^l; %if gamma_1 element satisfies bound,
                    
                    for i = 2:51
                        for j = 2:51  %select matrices
                            
                            if cy(proj(X{i}^-1*Pin),proj(G1*A{j})) <= 0.0001 %check point equality
                                if norm(X{i}*G1*A{j} - Pin) <= 0.0001
                                    for a1 = 0:1
                                        for b1 = -19:19  %make gamma* element
                                            for c1 = -3:3
                                                for d1 = -4:4
                                                    
                                                    if norm(R^a1*Tsq2^b1*T2^c1*Ti^d1*X{i}*G1*X{j} - X{1}) <= 0.0001
                                                        fprintf(fileID,'R^%d*Tsq2^%d*T2^%d*Ti^%d*%s*R^%d*Tsq2^%d*T2^%d*Ti^%d*%s,\r\n',a1,b1,c1,d1,Y{i},p,n,m,l,Y{j});
                                                        q = q+1; %if relation satisfied, print relation and increase relation count
                                                    else
                                                        continue;
                                                    end
                                                end
                                            end
                                        end
                                    end
                                elseif norm(X{i}*G1*A{j} - (-1)*Pin) <= 0.0001 %check point equality up to factor of -1
                                    for a2 = 0:1
                                        for b2 = -19:19
                                            for c2 = -3:3 %establish gamma* element
                                                for d2 = -4:4
                                                    
                                                    if norm(R^a2*Tsq2^b2*T2^c2*Ti^d2*X{i}*G1*X{j} - (-1)*X{1}) <= 0.0001
                                                        fprintf(fileID,'R^%d*Tsq2^%d*T2^%d*Ti^%d*%s*R^%d*Tsq2^%d*T2^%d*Ti^%d*%s,\r\n',a2,b2,c2,d2,Y{i},p,n,m,l,Y{j});
                                                        q = q+1; %check relation equality and increase relation count by 1 if satisfied
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
                else
                    continue;
                end
            end
        end
    end
end

fprintf(fileID,'q = %d',q); %print relation count
                                    
