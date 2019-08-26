%script for d=11, case p_a = p_c, p_b = infinity
assign_11; %allocate matrices and generators

exponents_11; %set up possible exponents for gamma elements

q = 0; %begin count for relations

fileID = fopen('relations_11_pa_0.txt','w'); %open file to print relations

for i = 2:260  %select matrix from list
    for g1 = 1:770 %selection combination of exponents
        gam_1 = R^(EXPS(1,g1))*T_v^(EXPS(2,g1))*T_1^(EXPS(3,g1))*T_t^(EXPS(4,g1)); %make gamma_1
        
        if norm(gam_1*X{i}*[1;0;0] - X{i}*[1;0;0]) <= 0.0001 ||  norm(gam_1*X{i}*[1;0;0] + X{i}*[1;0;0]) <= 0.0001
            for g4 = 1:770 %if gamma_1 satisfies bound, select exponents and make gamma*
                gam_4 =  R^(EXPS(1,g4))*T_v^(EXPS(2,g4))*T_1^(EXPS(3,g4))*T_t^(EXPS(4,g4));
                
                if norm((gam_4)^(-1)*X{i}^(-1)*gam_1*X{i} - X{1}) < 0.0001 || norm((gam_4)^(-1)*X{i}^(-1)*gam_1*X{i} + X{1}) < 0.0001
                    fprintf(fileID,'(R^%d*T_v^%d*T_1^%d*T_t^%d)^-1*%s^-1*R^%d*T_v^%d*T_1^%d*T_t^%d*%s,\r\n',EXPS(1,g4),EXPS(2,g4),EXPS(3,g4),EXPS(4,g4),Y{i},EXPS(1,g1),EXPS(2,g1),EXPS(3,g1),EXPS(4,g1),Y{i});
                    q = q+1; %check if relation is satisfied, up to factor of -1, if so print relation and
                else         %increase relation count
                    continue;
                end
            end
        else
            continue;
        end
    end
end

fprintf(fileID,'q = %d',q); %print relation count
