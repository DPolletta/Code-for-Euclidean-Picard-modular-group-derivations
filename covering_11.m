%this script generates Cygan covering for d=11
prism11
hold on

g11 = @f11;  %call functions defining Cygan spheres
g12 = @f12;
g13 = @f13;
g14 = @f14;
g15 = @f15;
g16 = @f16;
g17 = @f17;
g18 = @f18;

g31 = @f31;
g33 = @f33;
g34 = @f34;


g53 = @f53;
g55 = @f55;

g41 = @f41;
g43 = @f43;

g92 = @f92;
g915 = @f915;

g2314 = @f2314;
g2545 = @f2545;


a = .7;

fimplicit3(g11, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)  %plot Cygan spheres
fimplicit3(g12, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g13, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g14, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g16, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g17, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)

fimplicit3(g31, 'EdgeColor', 'none','FaceColor', 'c', 'FaceAlpha', a)
fimplicit3(g33, 'EdgeColor', 'none','FaceColor', 'c', 'FaceAlpha', a)
fimplicit3(g34, 'EdgeColor', 'none','FaceColor', 'c', 'FaceAlpha', a)

fimplicit3(g41, 'EdgeColor', 'none','FaceColor', 'm', 'FaceAlpha', a)
fimplicit3(g43, 'EdgeColor', 'none','FaceColor', 'm', 'FaceAlpha', a)

fimplicit3(g53, 'EdgeColor', 'none','FaceColor', 'b', 'FaceAlpha', a)

fimplicit3(g92, 'EdgeColor', 'none','FaceColor', 'r', 'FaceAlpha', a)
fimplicit3(g915, 'EdgeColor', 'none','FaceColor', 'r', 'FaceAlpha', a)

fimplicit3(g2545, 'EdgeColor', 'none','FaceColor', 'y', 'FaceAlpha', a)

fimplicit3(g2314, 'EdgeColor', 'none','FaceColor', 'b', 'FaceAlpha', a)

%functions defining Cygan spheres (here we use form distance^2 = radius^2
function d = f11(x,y,z)
d = (((x).^2+(y).^2+(0.301511345)).^2 + (z).^2).^(1/2)-2;
end

function d = f12(x,y,z)
d=(((x).^2 +(y).^2+(0.301511345)).^2+(z-2.*sqrt(11)).^2).^(1/2) - 2;
end

function d = f13(x,y,z)
d=(((x-1).^2 +(y).^2+(0.301511345)).^2+(z-sqrt(11)+2.*y).^2).^(1/2) - 2;
end

function d = f14(x,y,z)
d=(((x-1/2).^2 +(y-sqrt(11)/2).^2+(0.301511345)).^2+(z-sqrt(11)+y-sqrt(11).*x).^2).^(1/2) - 2;
end

function d = f15(x,y,z)
d=(((x+1/2).^2 +(y-sqrt(11)/2).^2+(0.301511345)).^2+(z+sqrt(11)-y-sqrt(11).*x).^2).^(1/2) - 2;
end

function d = f16(x,y,z)
d=(((x+1/2).^2 +(y-sqrt(11)/2).^2+(0.301511345)).^2+(z-sqrt(11)-y-sqrt(11).*x).^2).^(1/2) - 2;
end

function d = f17(x,y,z)
d=(((x-3/2).^2 +(y-sqrt(11)/2).^2+(0.301511345)).^2+(z-sqrt(11)+3.*y-sqrt(11).*x).^2).^(1/2) - 2;
end

function d = f18(x,y,z)
d=(((x+1/2).^2 +(y+sqrt(11)/2).^2+(0.301511345)).^2+(z-sqrt(11)-y+sqrt(11).*x).^2).^(1/2) - 2;
end

function d = f31(x,y,z)
d=(((x-1/6).^2 +(y-sqrt(11)/6).^2+(0.301511345)).^2+(z-(5/3).*sqrt(11)+(2/6).*y-(2/6).*sqrt(11).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f33(x,y,z)
d=(((x-4/6).^2 +(y-2.*sqrt(11)/6).^2+(0.301511345)).^2+(z-(5/3).*sqrt(11)+(8/6).*y-(4/6).*sqrt(11).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f34(x,y,z)
d=(((x-5/6).^2 +(y-1.*sqrt(11)/6).^2+(0.301511345)).^2+(z-(1).*sqrt(11)+(10/6).*y-(2/6).*sqrt(11).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f41(x,y,z)
d=(((x).^2 +(y).^2+(0.301511345)).^2+(z-1.*sqrt(11)).^2).^(1/2) - sqrt(4/4);
end

function d = f43(x,y,z)
d=(((x-1).^2 +(y).^2+(0.301511345)).^2+(z-(2).*sqrt(11)+2.*y).^2).^(1/2) - sqrt(4/4);
end

function d = f53(x,y,z)
d=(((x-4/10).^2 +(y-2.*sqrt(11)/10).^2+(0.301511345)).^2+(z-(1/5).*sqrt(11)+(8/10).*y-(4/10).*sqrt(11).*x).^2).^(1/2) - sqrt(4/5);
end

function d = f55(x,y,z)
d=(((x-13/10).^2 +(y-1.*sqrt(11)/10).^2+(0.301511345)).^2+(z-(7/5).*sqrt(11)+(26/10).*y-(2/10).*sqrt(11).*x).^2).^(1/2) - sqrt(4/5);
end

function d = f92(x,y,z)
d=(((x).^2 +(y).^2+(0.301511345)).^2+(z-(4/3).*sqrt(11)).^2).^(1/2) - sqrt(4/9);
end

function d = f915(x,y,z)
d=(((x-1).^2 +(y).^2+(0.301511345)).^2+(z-(5/3).*sqrt(11)+2.*y).^2).^(1/2) - sqrt(4/9);
end

function d = f2545(x,y,z)
d=(((x-32/50).^2 +(y-4.*sqrt(11)/50).^2+(0.301511345)).^2+(z-(36/25).*sqrt(11)+(64/50).*y-(8/50).*sqrt(11).*x).^2).^(1/2) - sqrt(4/25);
end

function d = f2314(x,y,z)
d=(((x-10/46).^2 +(y-4.*sqrt(11)/46).^2+(0.301511345)).^2+(z-(31/23).*sqrt(11)+(20/46).*y-(8/46).*sqrt(11).*x).^2).^(1/2) - sqrt(4/23);
end
