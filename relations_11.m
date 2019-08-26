%script for d = 11, case p_a,p_b,p_c not infinity
assign_11; %allocate matrices and generators

q = 0; %begin count for number of relations

fileID = fopen('relations_11.txt','w'); %open file to print relations

p = 0:1;
n = -8:8;
m = -3:4;
l = -4:0;

G1 = combvec(p,n,m,l); %set combinations of exponents for gamma_1

r = 0:1;
s = -6:8;
t = -4:3;
u = -3:2;

G3 = combvec(r,s,t,u); %set combinations of exponents for gamma_3

a = 0:1;
b = -12:9;
c = -4:5;
d = -4:0;

G4 = combvec(a,b,c,d); %set combinations of exponents for gamma*

clear p n m l r s t u a b c d

for i = 2:260
    for j = 2:260
        for k = 2:260 %select A_a,A_b,A_c matrices
            
            for g1 = 1:1360
                gam_1 = R^(G1(1,g1))*T_v^(G1(2,g1))*T_1^(G1(3,g1))*T_t^(G1(4,g1));
                %make gamma_1 element
                if norm(cy(proj(X{i}^-1*[1;0;0]),proj(gam_1*X{j}*[1;0;0])) - bound(X{i}*[1;0;0],X{j}*[1;0;0],X{k}*[1;0;0])) <= 0.0001
                    for g3 = 1:1440 %if Cygan bound satisfied for gamma_1, make gamma_3 element
                        gam_3 = R^(G3(1,g3))*T_v^(G3(2,g3))*T_1^(G3(3,g3))*T_t^(G3(4,g3));
                        
                        if  norm(cy(proj(X{i}*[1;0;0]),proj(gam_3*X{k}*[1;0;0])) - bound(X{i}*[1;0;0],X{k}*[1;0;0],X{j}*[1;0;0])) <= 0.0001
                            for g4 = 1:2200 %if Cygan bound satisfied for gamma_3, make gamma*
                                gam_4 = R^(G4(1,g4))*T_v^(G4(2,g4))*T_1^(G4(3,g4))*T_t^(G4(4,g4));
                                
                                if  norm(cy(proj(X{k}^-1*[1;0;0]),proj(gam_4*X{j}^-1*[1;0;0])) - bound(X{k}*[1;0;0],X{j}*[1;0;0],X{i}*[1;0;0])) <= 0.0001
                                    %if point equality satisfied up to factor of -1, check
                                    %relation up to factor of -1
                                    if norm((gam_4)^(-1)*X{k}^(-1)*(gam_3)^(-1)*X{i}*gam_1*X{j} - X{1}) < 0.0001 || norm((gam_4)^(-1)*X{k}^(-1)*(gam_3)^(-1)*X{i}*gam_1*X{j} + X{1}) < 0.0001
                                    fprintf(fileID,'(R^%d*T_v^%d*T_1^%d*T_t^%d)^-1*%s^-1*T_t^-(%d)*T_1^-(%d)*T_v^-(%d)*R^-(%d)*%s*R^%d*T_v^%d*T_1^%d*T_t^%d*%s,\r\n',G4(1,g4),G4(2,g4),G4(3,g4),G4(4,g4),Y{k},G3(4,g3),G3(3,g3),G3(2,g3),G3(1,g3),Y{i},G1(1,g1),G1(2,g1),G1(3,g1),G1(4,g1),Y{j});
                                    q = q+1; %print relation and increase relation count
                                    else
                                        continue;
                                    end
                                else
                                    continue;
                                end
                            end
                        else
                            continue;
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

function D = cy(A,B)
D = abs(abs(A(1)-B(1))^4 + abs(A(2)-B(2) + 2*imag(conj(B(1))*A(1)))^2)^(1/4);
end

function Y = proj(A)
Y(1) = A(2)/A(3);
Y(2) = 2*imag(A(1)/A(3));
end

function A = lev(B,C)
A = abs(ctranspose(C)*[0 0 1; 0 1 0; 1 0 0]*B)^2;
end

function A = dep(B)
A = lev(B,[1;0;0]);
end

function Y = bound(pa,pb,pc)
Y = (((4*dep(pc))/(dep(pa)*dep(pb)))^(1/4));
end
