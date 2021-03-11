prompt1 = 'd = ';
d = input(prompt1);  %value of d

prompt2 = 'depth = ';
dep = input(prompt2); %maximal depth of rational points in D_infty

s = 1; %index for vectors containing q in O_d and corresponding depth values

Q = zeros(1000000,1); %pre-allocate vector for q values
D = zeros(1000000,1); %pre-allocate vector for depth vcalues

for m = 1:dep
    for a = 0:10
        for b = 0:10
            if  nmsqd(a,b,d) == m   %check if norm(q) = m
                Q(s) = cmpd(a,b,d); %if so, store q and corresponding depth
                D(s) = m;
                s = s+1;  %increase vector index by 1
            else
                continue
            end
        end
    end
    for a = -10:-1
        for b = 1:10
            if nmsqd(a,b,d) == m   %check if norm(q) = n
                Q(s) = cmpd(a,b,d); %if so store q and corresponding depth
                D(s) = m;           %and store corresponding depth 
                s = s+1;  %increase vector index by 1
            else
                continue
            end
        end
    end
end

Q = Q(1:s-1);  %delete empty entries in q and depth vectors
D = D(1:s-1); 

P_z = zeros(1000000,1);  %pre-allocate prism point values
P_v = zeros(1000000,1);
P_d = zeros(1000000,1);
P_q = zeros(1000000,1);

P_z(1) = 0; %establish horospherical point (0,0) of depth 1
P_v(1) = 0;
P_d(1) = 1;
P_q(1) = 1;

t = 2;
for k = 1:s-1          %check if q*(prism pt) is member of O_d
    a = round(reald(Q(k),d)); %reald(z,d) gives a in a + b*Tau
    b = round(imagd(Q(k),d)); %imagd(z,d) gives b in a + b*Tau
    
    n = D(k);           %establish depth of prism point
    
    if mod(d,4) == 1                    %three cases (d cong 1,2,3 mod 4)
                                        %in each case, we check if q*z = (a+b*Tau)*z,
        for i = 0:n                     %q*(-(1/2)*norm(z)^2 +(1/2)*ivsqrt(d), in O_d
            for j = 0:i                 %if both integral, store p = (z,v), and depth in
            x = (i/n);                  %store vectors P_z, P_v, P_d
            y = (j/n);
            %Below, the functions mult1 - mult4 represent c,d,e,f
            %respectively, where q*z = (a+b*Tau)*(x+y*tau) = c+d*tau
            %q*(-(1/2)*norm(z)^2 +(1/2)*ivsqrt(d)) = e+f*tau
            %the loops below are checks if these values are integers
            if (norm(round(mult1(a,b,x,y,d)) - mult1(a,b,x,y,d)) < 0.00001) && (norm(round(mult2(a,b,x,y,d)) - mult2(a,b,x,y,d)) < 0.00001)
                for l = 0:2*n            
                    z = nmsqd(x,y,d);
                    v = ((l)/n);
                
                    if (norm(round(mult3(a,b,z,v,d)) - mult3(a,b,z,v,d))<0.00001) && (norm(round(mult4(a,b,z,v,d)) - mult4(a,b,z,v,d)) < 0.00001)
                        if dot(ismember(P_z,cmpd(x,y,d)),ismember(P_v,v)) == 0
                        P_z(t) = cmpd(x,y,d);  %Establish lists of horospherical points
                        P_v(t) = v;            %and corresponding depths, q values
                        P_d(t) = n;
                        P_q(t) = Q(k);
                        t = t+1;
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
        end
        
    for i = (n+1):(2*n)        
        for j = 0:(2*n - i)
            x = (i/n); 
            y = (j/n);
        
            if (norm(round(mult1(a,b,x,y,d)) - mult1(a,b,x,y,d)) < 0.00001) && (norm(round(mult2(a,b,x,y,d)) - mult2(a,b,x,y,d)) < 0.00001)
                for l = 0:2*n            
                    z = nmsqd(x,y,d);
                    v = ((l)/n);
                
                    if (norm(round(mult3(a,b,z,v,d)) - mult3(a,b,z,v,d))<0.00001) && (norm(round(mult4(a,b,z,v,d)) - mult4(a,b,z,v,d)) < 0.00001)
                        if dot(ismember(P_z,cmpd(x,y,d)),ismember(P_v,v)) == 0
                        P_z(t) = cmpd(x,y,d);
                        P_v(t) = v;
                        P_d(t) = n;
                        P_q(t) = Q(k);
                        t = t+1;
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
    end
    
    elseif mod(d,4) == 2
        
        for i = 0:2*n       
            for j = 0:n - ceil(i/2)
            x = (i/n); 
            y = (j/n);
        
            if (norm(round(mult1(a,b,x,y,d)) - mult1(a,b,x,y,d)) < 0.00001) && (norm(round(mult2(a,b,x,y,d)) - mult2(a,b,x,y,d)) < 0.00001)
                for l = 0:2*n            
                    z = nmsqd(x,y,d);
                    v = ((l)/n);
                
                    if (norm(round(mult3(a,b,z,v,d)) - mult3(a,b,z,v,d))<0.00001) && (norm(round(mult4(a,b,z,v,d)) - mult4(a,b,z,v,d)) < 0.00001)
                        if dot(ismember(P_z,cmpd(x,y,d)),ismember(P_v,v)) == 0
                        P_z(t) = cmpd(x,y,d);
                        P_v(t) = v;
                        P_d(t) = n;
                        P_q(t) = Q(k);
                        t = t+1;
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
        end
        
    elseif mod(d,4) == 3
        
        for i = 0:n      
            for j = 0:(n-i)
            x = (i/n); 
            y = (j/n);
        
            if (norm(round(mult1(a,b,x,y,d)) - mult1(a,b,x,y,d)) < 0.00001) && (norm(round(mult2(a,b,x,y,d)) - mult2(a,b,x,y,d)) < 0.00001)
                for l = 0:2*n            
                    z = nmsqd(x,y,d);
                    v = ((l)/n);
                
                    if (norm(round(mult3(a,b,z,v,d)) - mult3(a,b,z,v,d))<0.00001) && (norm(round(mult4(a,b,z,v,d)) - mult4(a,b,z,v,d)) < 0.00001)
                        if dot(ismember(P_z,cmpd(x,y,d)),ismember(P_v,v)) == 0
                        P_z(t) = cmpd(x,y,d);
                        P_v(t) = v;
                        P_d(t) = n;
                        P_q(t) = Q(k);
                        t = t+1;
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
        end
    end
end

P_z = P_z(1:t-1); %delete 0 entries for point vectors
P_v = P_v(1:t-1);
P_d = P_d(1:t-1);
P_q = P_q(1:t-1);

F = figure('units','normalized','outerposition',[0 0 1 1]);

C = {'m','g','b','r','y','c'}; %array for colors of Cygan spheres

%generate fundamental prism for Gamma_inf action
%d cong 1 (4) -> prism convex hull of (0,0),(2,0),(1+Tau,0), and same
%points with v = 2*sqrt(d)
%d cong 2 (4) -> "" (0,0), (2,0), (0,tau), ""
%d cong 3 (4) -> "" (0,0), (1,0), (tau,0), ""
if mod(d,4) == 1
    
    v1 = [0 0 0; 2 0 0; 1 sqrt(d) 0; 0 0 2*sqrt(d); 2 0 2*sqrt(d); 1 sqrt(d) 2*sqrt(d)];
    f1 = [1 2 5 4; 2 3 6 5; 1 3 6 4];

    axes('XLim', [-2,4], 'YLim', [-2,sqrt(d)+2], 'Zlim', [-2,2*sqrt(d)+2])
    view(3);
    patch('Faces',f1,'Vertices',v1,'Edgealpha',1,'Facealpha',1)
    figure(F);
    
elseif mod(d,4) == 2
    
    v1 = [0 0 0; 2 0 0; 0 sqrt(d) 0; 0 0 2*sqrt(d); 2 0 2*sqrt(d); 0 sqrt(d) 2*sqrt(d)];
    f1 = [1 2 5 4; 2 3 6 5; 1 3 6 4];

    axes('XLim', [-2,4], 'YLim', [-2,sqrt(d)+2], 'Zlim', [-4,2*sqrt(d)+2])
    view(3);
    patch('Faces',f1,'Vertices',v1,'Edgealpha',1,'Facealpha',1)
    figure(F);
    
elseif mod(d,4) == 3
    
    v1 = [0 0 0; 1 0 0; 1/2 sqrt(d)/2 0; 0 0 2*sqrt(d); 1 0 2*sqrt(d); 1/2 sqrt(d)/2 2*sqrt(d)];
    f1 = [1 2 5 4; 2 3 6 5; 1 3 6 4];

    axes('XLim', [-2,3], 'YLim', [-2,sqrt(d)/2 + 2], 'Zlim', [-2,2*sqrt(d)+2])
    view(3);
    patch('Faces',f1,'Vertices',v1,'Edgealpha',1,'Facealpha',1)
    figure(F);
    
end
hold on

% plot Cygan spheres

%use code below if you want to plot spheres one by one, otherwise comment out
for k = 1:t-1   
    col_1 = mod(P_d(k),6)+1;  %pick color for certain spheres of certain death
    col = C{col_1}; 
    
    %plot Cyan sphere centered at p = (x + iy*tau) with radius
    %sqrt(2/depth(p))
    f = @(h,w,l) cysp(h,w,l,reald(P_z(k),d),imagd(P_z(k),d),P_v(k),2/sqrt(dep+1),d) - sqrt(4/P_d(k));
    figure(F);
    fimplicit3(f,'EdgeColor','none','FaceColor',col, 'FaceAlpha', 0.75);
    pause(0.5);
end

%use code below if you want to plot spheres all at once, otherwise comment out
%{
for k = 1:t-1   
    col_1 = mod(P_d(k),6)+1;  %pick color for certain spheres of certain death
    col = C{col_1}; 
    
    %plot Cyan sphere centered at p = (x + iy*tau) with radius
    %sqrt(2/depth(p))
    f = @(h,w,l) cysp(h,w,l,reald(P_z(k),d),imagd(P_z(k),d),P_v(k),2/sqrt(dep+1),d) - sqrt(4/P_d(k));
    fimplicit3(f,'EdgeColor','none','FaceColor',col, 'FaceAlpha', 0.75);
end
%}

%extra spheres used for d=5 comment out if not doing d=5
%{
g1 = @(x,y,z) cysp(x,y,z,2,0,4,2/sqrt(dep+1),d) - 2;
fimplicit3(g1,'EdgeColor','none','FaceColor','g', 'FaceAlpha', 0.75);
figure(F);
g2 = @(x,y,z) cysp(x,y,z,1,1,-2,2/sqrt(dep+1),d) - 2;
fimplicit3(g2,'EdgeColor','none','FaceColor','g', 'FaceAlpha', 0.75);
figure(F);
%}


hold off

POINTS = cell(1,t-1);
LIFTS = cell(1,t-1);
POINTS_S = cell(1,t-1);
LIFTS_S = cell(1,t-1);
r=0;
depth = 1;

for i=1:t-1
    POINTS{i} = [P_z(i) P_v(i)*sqrt(d)];
    LIFTS{i} = liftd(reald(P_z(i),d),imagd(P_z(i),d),P_v(i),d)*P_q(i);
    
    a_1 = reald(P_z(i),d);
    b_1 = imagd(P_z(i),d);
    a_2 = reald(P_q(i),d);
    b_2 = imagd(P_q(i),d);
    
    if P_d(i) == depth
        r = r+1;
        POINTS_S{i} = sprintf('p_{%d,%d} = (%s+%stau, %ssqrt{%d}) \n q = %s+%stau \n\n ',P_d(i),r,rats(a_1),rats(b_1),rats(P_v(i)),d,rats(a_2),rats(b_2));
        LIFTS_S{i} = sprintf('P_{%d,%d} = %s+%stau \n\t\t %s+%stau \n\t\t %s+%stau \n\n',P_d(i),r,rats(reald(LIFTS{i}(1),d)),rats(imagd(LIFTS{i}(1),d)),rats(reald(LIFTS{i}(2),d)),rats(imagd(LIFTS{i}(2),d)),rats(reald(LIFTS{i}(3),d)),rats(imagd(LIFTS{i}(3),d)));
    else
        depth = P_d(i);
        r = 1;
        POINTS_S{i} = sprintf('p_{%d,%d} = (%s+%stau, %ssqrt{%d}) \n q = %s+%stau \n\n',P_d(i),r,rats(a_1),rats(b_1),rats(P_v(i)),d,rats(a_2),rats(b_2));
        LIFTS_S{i} = sprintf('P_{%d,%d} = %s+%stau \n\t\t %s+%stau \n\t\t %s+%stau \n\n',P_d(i),r,rats(reald(LIFTS{i}(1),d)),rats(imagd(LIFTS{i}(1),d)),rats(reald(LIFTS{i}(2),d)),rats(imagd(LIFTS{i}(2),d)),rats(reald(LIFTS{i}(3),d)),rats(imagd(LIFTS{i}(3),d)));
    end
end

%comment out if you do not want to print points and lifts to textfile
pt_ct = 0;
fileID = fopen('pts_lifts.txt','w'); %file to print data

for i=1:t-1
    fprintf(fileID,strcat(POINTS_S{i},'\r\n\n'));
    fprintf(fileID,strcat(LIFTS_S{i},'\r\n\n'));
    pt_ct = pt_ct + 1;
end

fprintf(fileID,'num_pts = %d', pt_ct);

%functions
function z = cmpd(a,b,d) %generate normal form for elements of O_d
if mod(d,4) == 1 || mod(d,4) == 2
    z = a + b*(1i)*sqrt(d);
elseif mod(d,4) == 3
    z = a + b*((1 + (1i)*sqrt(d))/2);
end
end

function y = nmsqd(a,b,d) %calculate norm squared O_d elements
if mod(d,4) == 1 || mod(d,4) == 2
    y = a^2 + d*b^2;
elseif mod(d,4) == 3
    y = a^2 + a*b + round((d+1)/4)*b^2;
end
end

function A = liftd(a,b,v,d) %generate standard lift
A = [(-norm(cmpd(a,b,d))^2 + 1i*v*sqrt(d))/2; cmpd(a,b,d);1];
end

function q = mult1(a,b,x,y,d)  %criteria for q*(prism pt) to be integral
if mod(d,4) == 1 || mod(d,4) == 2
    q = a*x - d*b*y;  
elseif mod(d,4) == 3
    q = a*x - ((d+1)/4)*b*y;
end
end

function q = mult2(a,b,x,y,d) %criteria for q*(prism pt) to be integral
if mod(d,4) == 1 || mod(d,4) == 2
    q = a*y + b*x;  
elseif mod(d,4) == 3
    q = a*y + b*x + b*y;
end
end

function q = mult3(a,b,z,v,d) %criteria for q*(prism pt) to be integral
if mod(d,4) == 1 || mod(d,4) == 2
    q = (a/2)*z + (b/2)*v*d;  
elseif mod(d,4) == 3
    q = (a/2)*z + (a/2)*v + ((d+1)/4)*b*v;  
end
end

function q = mult4(a,b,z,v,d) %criteria for q*(prism pt) to be integral
if mod(d,4) == 1 || mod(d,4) == 2
    q = (a/2)*v - (b/2)*z; 
elseif mod(d,4) == 3
    q = a*v - (b/2)*z + (b/2)*v;  
end
end
 
function y = reald(z,d) %recover a in a + b*tau
if mod(d,4) == 1 || mod(d,4) == 2
    y = real(z);   
elseif mod(d,4) == 3
    y = real(z) - (imag(z)/sqrt(d));   
end
end

function y = imagd(z,d) %recover b in a + b*tau
if mod(d,4) == 1 || mod(d,4) == 2
    y = imag(z)/sqrt(d);   
elseif mod(d,4) == 3
    y = imag(z)*(2/sqrt(d));
end
end

function q = cysp(x,y,z,a,b,c,u,d)  %calculate cygan distance between (x+iy, z) and (a + b*tau)
if mod(d,4) == 1 || mod(d,4) == 2   
q = (((x-a).^2 + (y - b.*sqrt(d)).^2 + (u+0.0000001)).^2 + (z - c.*sqrt(d) + 2.*(a.*y - b.*x.*sqrt(d))).^2).^(1/2);
elseif mod(d,4) == 3
q = (((x-(a+(b/2))).^2 + (y - (b/2).*sqrt(d)).^2 + (u+0.0000001)).^2 + (z - c.*sqrt(d) + 2.*((a+(b/2)).*y - (b/2).*x.*sqrt(d))).^2).^(1/2);
end
end