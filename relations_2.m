%script for relations d=2, case p_a,p_b,p_c not infinity
assign; %allocate matrices and generators

q = 0;  %begin count for number of relations

fileID = fopen('relations.txt','w'); %file to print relations

for i = 2:51
    for j = 2:51         %select three matrices
        for k = 2:51
            
            for p = 0:1           %select exponents for gamma_1
                for n = -19:19
                    for m = -3:3           
                        for l = -4:4
                            
                            if f(n,m,l) <= 6.3014/sqrt(2)
                                G1 = R^p*Tsq2^n*T2^m*Ti^l; %if bounds satisfied, make gamma_1
                                
                                if norm( cy(proj(X{i}^-1*Pin),proj(G1*A{j})) - bound(X{i}^-1*Pin,A{j},A{k})) <= 0.0001
                                    for r = 0:1            %if gamma_1 bound satisfied for matrices (a,b,c)
                                        for s = -19:19     %make gamma_3 element
                                            for t = -3:3
                                                for u = -4:4
                                                    
                                                    if f(s,t,u) <=6.2738/sqrt(2)  %if bounds satisfied
                                                        G3 = R^r*Tsq2^s*T2^t*Ti^u; %make gamma_3
                                                        
                                                        if norm( cy(proj(X{i}*Pin),proj(G3*A{k})) - bound(X{i}*Pin,A{k},A{j})) <= 0.0001
                                                            if norm(X{i}*G1*A{j} - G3*A{k}) <= 0.0001
                                                                for a1 = 0:1    %if point equality is satisfied, make gamma* element
                                                                    for b1 = -19:19
                                                                        for c1 = -3:3
                                                                            for d1 = -4:4
                                                                                
                                                                                if norm(R^a1*Tsq2^b1*T2^c1*Ti^d1*X{k}^-1*G3^-1*X{i}*G1*X{j} - X{1}) <= 0.0001
                                                                                    fprintf(fileID,'R^%d*Tsq2^%d*T2^%d*Ti^%d*%s^-1*Ti^-(%d)*T2^-(%d)*Tsq2^-(%d)*R^-(%d)*%s*R^%d*Tsq2^%d*T2^%d*Ti^%d*%s,\r\n',a1,b1,c1,d1,Y{k},u,t,s,r,Y{i},p,n,m,l,Y{j});
                                                                                    q = q+1;  %if relation is satisfied, print relation and increase relation count by 1
                                                                                else
                                                                                    continue;
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            elseif norm(X{i}*G1*A{j} - (-1)*G3*A{k}) <= 0.0001
                                                                for a2 = 0:1  %if point equality is satisfied up to factor of -1, make gamma* element
                                                                    for b2 = -19:19
                                                                        for c2 = -3:3
                                                                            for d2 = -4:4
                                                                                
                                                                                if norm(R^a2*Tsq2^b2*T2^c2*Ti^d2*X{k}^-1*G3^-1*X{i}*G1*X{j} - (-1)*X{1}) <= 0.0001
                                                                                    fprintf(fileID,'R^%d*Tsq2^%d*T2^%d*Ti^%d*%s^-1*Ti^-(%d)*T2^-(%d)*Tsq2^-(%d)*R^-(%d)*%s*R^%d*Tsq2^%d*T2^%d*Ti^%d*%s,\r\n',a2,b2,c2,d2,Y{k},u,t,s,r,Y{i},p,n,m,l,Y{j});
                                                                                    q = q+1; %if relation is satisfied up to factor of -1 
                                                                                else         %print relation and increase relation count by 1
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
    end
end

fprintf(fileID,'q = %d',q); %print relation count
                                                        
