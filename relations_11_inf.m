%script for d=11, p_c = infinity, note, other scripts for d=11 are slightly
%different from d=2 cases as computation cost is much larger
assign_11; %allocate matrices and generators

q = 0; %begin relation count

fileID = fopen('relations_inf_11.txt','w'); %open file to print relations

for p = 0:1
    for n = -20:20 %set up gamma_1 element exponents
        for m = -9:9
            for l = -5:5
                
                if g(n,m,l) <= 5.2560 %if Cygan bound satisfied, establish gamma_1
                    G1 = R^p*T_v^n*T_1^m*T_t^l;
                    
                    for i = 2:260
                        for j = 2:260 %select matrices
                            
                            if cy(proj(X{i}^-1*[1;0;0]),proj(G1*X{j}*[1;0;0])) <= 0.0001
                                if norm(X{i}*G1*X{j}*[1;0;0] - [1;0;0]) <= 0.0001 || norm(X{i}*G1*X{j}*[1;0;0] - (-1)*[1;0;0]) <= 0.0001
                                    for a1 = 0:1 %if gamma_1 bounds satisfied, set up gamma*
                                        for b1 = -20:20
                                            for c1 = -9:9
                                                for d1 = -5:5
                                                    
                                                    if norm(R^a1*T_v^b1*T_1^c1*T_t^d1*X{i}*G1*X{j} - X{1}) <= 0.0001 || norm(R^a1*T_v^b1*T_1^c1*T_t^d1*X{i}*G1*X{j} - (-1)*X{1}) <= 0.0001
                                                        fprintf(fileID,'R^%d*T_v^%d*T_1^%d*T_t^%d*%s*R^%d*T_v^%d*T_1^%d*T_t^%d*%s,\r\n',a1,b1,c1,d1,Y{i},p,n,m,l,Y{j});
                                                        q = q+1; %check relation, if satisfied, print relation and increase count by 1
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
