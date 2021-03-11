d = input('d = ');
depth = input('depth = ');

a1 = input('Re_d(z_1) = ');
b1 = input('Im_d(z_1) = ');
c1 = input('v_1 = ');
dep1 = input('depth(z_1,v_1) = ');

a2 = input('Re_d(z_2) = ');
b2 = input('Im_d(z_2) = ');
c2 = input('v_2 = ');
dep2 = input('depth(z_2,v_2) = ');

fun = @(x)(-x(4));

if mod(d,4) == 1 || mod(d,4) == 2
    nonlcon = @mycon1;
elseif mod(d,4) == 3
    nonlcon = @mycon2;
end

lb = [min(a1,a2),min(b1,b2),min(c1,c2),0,a1,b1,c1,a2,b2,c2,dep1,dep2,d];
ub = [max(a1,a2),max(b1,b2),max(c1,c2),min(2/sqrt(dep1),2/sqrt(dep2)),a1,b1,c1,a2,b2,c2,dep1,dep2,d];

x0 = (lb+ub)/2 -[0,0,0,min(2/sqrt(dep1),2/sqrt(dep2))/2,0,0,0,0,0,0,0,0,0];

A = [];
b = [];

Aeq = [0 0 0 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 0 0 0 0 0 0 0 0 0;
       0 0 0 0 1 0 0 0 0 0 0 0 0;
       0 0 0 0 0 1 0 0 0 0 0 0 0;
       0 0 0 0 0 0 1 0 0 0 0 0 0;
       0 0 0 0 0 0 0 1 0 0 0 0 0;
       0 0 0 0 0 0 0 0 1 0 0 0 0;
       0 0 0 0 0 0 0 0 0 1 0 0 0;
       0 0 0 0 0 0 0 0 0 0 1 0 0;
       0 0 0 0 0 0 0 0 0 0 0 1 0;
       0 0 0 0 0 0 0 0 0 0 0 0 1];
   
beq = [0;0;0;0;a1;b1;c1;a2;b2;c2;dep1;dep2;d];

options = optimset('Display','off');

x = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options);

if mod(d,4) == 1 || mod(d,4) == 2
    if cysp(x(1),x(2)*sqrt(d),x(3)*sqrt(d),a1,b1,c1,2/sqrt(depth+1),d) < 2/sqrt(dep1) && cysp(x(1),x(2)*sqrt(d),x(3)*sqrt(d),a2,b2,c2,2/sqrt(depth+1),d) < 2/sqrt(dep2)
        fprintf('\nyes, they intersect\r\n');
        fprintf('u = %d\r\n',x(4));
    else
        fprintf('\nno, they do not intersect\r\n');
    end
elseif mod(d,4) == 3
    if cysp(x(1)+(x(2)/2),(x(2)/2)*sqrt(d),x(3)*sqrt(d),a1,b1,c1,2/sqrt(depth+1),d) < 2/sqrt(dep1) && cysp(x(1)+(x(2)/2),(x(2)/2)*sqrt(d),x(3)*sqrt(d),a2,b2,c2,2/sqrt(depth+1),d) < 2/sqrt(dep2)
        fprintf('\nyes, they intersect\r\n');
        fprintf('u = %d\r\n',x(4));
    else
        fprintf('\nno, they do not intersect\r\n');
    end
end

function [c,ceq] = mycon1(x)
c = [];
ceq = [((x(1)-x(5))^2+x(13)*(x(2)-x(6))^2+x(4))^2+x(13)*(x(3)-x(7)+2*x(5)*x(2)-2*x(6)*x(1))^2-(4/x(11));
       ((x(1)-x(8))^2+x(13)*(x(2)-x(9))^2+x(4))^2+x(13)*(x(3)-x(10)+2*x(8)*x(2)-2*x(9)*x(1))^2-(4/x(12))]; 
end

function [c,ceq] = mycon2(x)
c = [];
ceq = [(((x(1)-x(5))+(1/2)*(x(2)-x(6)))^2+(x(13)/4)*(x(2)-x(6))^2+x(4))^2+x(13)*(x(3)-x(7)+x(5)*x(2)-x(6)*x(1))^2-(4/x(11));
        (((x(1)-x(8))+(1/2)*(x(2)-x(9)))^2+(x(13)/4)*(x(2)-x(9))^2+x(4))^2+x(13)*(x(3)-x(10)+x(8)*x(2)-x(9)*x(1))^2-(4/x(12));];
end

function q = cysp(x,y,z,a,b,c,u,d)  %calculate cygan distance between (x+iy, z) and (a + b*tau)
if mod(d,4) == 1 || mod(d,4) == 2   
q = (((x-a).^2 + (y - b.*sqrt(d)).^2 + (u+0.0000001)).^2 + (z - c.*sqrt(d) + 2.*(a.*y - b.*x.*sqrt(d))).^2).^(1/2);
elseif mod(d,4) == 3
q = (((x-(a+(b/2))).^2 + (y - (b/2).*sqrt(d)).^2 + (u+0.0000001)).^2 + (z - c.*sqrt(d) + 2.*((a+(b/2)).*y - (b/2).*x.*sqrt(d))).^2).^(1/2);
end
end