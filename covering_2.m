%this script generates Cygan covering for d=2
prism2 %generate D^(2)_infty
hold on

g11 = @f11;  %call functions defining Cygan spheres
g12 = @f12;
g13 = @f13;
g14 = @f14;
g15 = @f15;
g16 = @f16;
g21 = @f21;
g22 = @f22;
g23 = @f23;
g31 = @f31;
g32 = @f32;
g33 = @f33;
g34 = @f34;
g41 = @f41;
g42 = @f42;
g43 = @f43;
g61 = @f61;
g62 = @f62;
g63 = @f63;
g81 = @f81;
g82 = @f82;
g83 = @f83;
g84 = @f84;
g85 = @f85;
g86 = @f86;
g87 = @f87;
g88 = @f88;
g91 = @f91;
g92 = @f92;
g93 = @f93;
g94 = @f94;
g95 = @f95;
g96 = @f96;
g97 = @f97;
g98 = @f98;
g99 = @f99;
g910 = @f910;
g911 = @f911;
g912 = @f912;
g913 = @f913;
g914 = @f914;
g915 = @f915;
g916 = @f916;
g917 = @f917;
g918 = @f918;
g919 = @f919;
g920 = @f920;
g111 = @f111;
g112 = @f112;
g113 = @f113;
g114 = @f114;
g115 = @f115;
g116 = @f116;
g117 = @f117;
g118 = @f118;
g119 = @f119;
g1110 = @f1110;
g121 = @f121;
g122 = @f122;
g123 = @f123;
g124 = @f124;
g125 = @f125;
g161 = @f161;
g162 = @f162;
g163 = @f163;
g164 = @f164;
g165 = @f165;
g166 = @f166;
g167 = @f167;
g168 = @f168;
g169 = @f169;
g1610 = @f1610;

a=0.75;

fimplicit3(g11, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)  %plot Cygan spheres
fimplicit3(g12, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g13, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g14, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g15, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)
fimplicit3(g16, 'EdgeColor', 'none','FaceColor', 'g', 'FaceAlpha', a)

fimplicit3(g31, 'EdgeColor', 'none','FaceColor', 'r', 'FaceAlpha', a)
fimplicit3(g34, 'EdgeColor', 'none','FaceColor', 'r', 'FaceAlpha', a)

%functions defining Cygan spheres (here we use form distance^2 = radius^2
function d = f11(x,y,z)
d = ((x.^2+y.^2+(.4852)).^2 + z.^2).^(1/2)-2;
end

function d = f12(x,y,z)
d=(((x).^2 +(y).^2+(.4852)).^2+(z-2.*sqrt(2)).^2).^(1/2) - 2;
end

function d = f13(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z+4.*y).^2).^(1/2) - 2;
end

function d = f14(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z-2.*sqrt(2)+4.*y).^2).^(1/2) - 2;
end

function d = f15(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-2.*sqrt(2).*x).^2).^(1/2) - 2;
end

function d = f16(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-2.*sqrt(2)-2.*sqrt(2).*x).^2).^(1/2) - 2;
end

function d = f21(x,y,z)
d=(((x).^2+(y).^2+(.4852)).^2+z.^2).^(1/2)-sqrt(2);
end

function d = f22(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-sqrt(2)-2.*sqrt(2).*x).^2).^(1/2) - sqrt(2);
end

function d = f23(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z-sqrt(2)+4.*y).^2).^(1/2) - sqrt(2);
end

function d = f31(x,y,z)
d=(((x-(2/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z-(2/3).*sqrt(2)+(4/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f32(x,y,z)
d=(((x-(2/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z-(2/3).*sqrt(2)+(4/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f33(x,y,z)
d=(((x-(4/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z+(8/3).*y - (2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f34(x,y,z)
d=(((x-(4/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - 2.*sqrt(2) +(8/3).*y - (2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/3);
end

function d = f41(x,y,z)
d=(((x-1).^2 +(y).^2+(.4852)).^2+(z+2.*y).^2).^(1/2) - 1;
end

function d = f42(x,y,z)
d=(((x-1).^2 +(y).^2+(.4852)).^2+(z - sqrt(2) +2.*y).^2).^(1/2) - 1;
end

function d = f43(x,y,z)
d=(((x-1).^2 +(y).^2+(.4852)).^2+(z - 2.*sqrt(2)+2.*y).^2).^(1/2) - 1;
end

function d = f61(x,y,z)
d=(((x-(2/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z-(5/3).*sqrt(2)+(4/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(2/3);
end

function d = f62(x,y,z)
d=(((x-(4/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - sqrt(2) +(8/3).*y - (2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(2/3);
end

function d = f63(x,y,z)
d=(((x-(2/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z-(5/3).*sqrt(2)+(4/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(2/3);
end

function d = f81(x,y,z)
d=(((x).^2 +(y).^2+(.4852)).^2+(z-(sqrt(2)/2)).^2).^(1/2) - sqrt(1/2);
end

function d = f82(x,y,z)
d=(((x).^2 +(y).^2+(.4852)).^2+(z-3.*(sqrt(2)/2)).^2).^(1/2) - sqrt(1/2);
end

function d = f83(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-(sqrt(2)/2)-2.*sqrt(2).*x).^2).^(1/2) - sqrt(1/2);
end

function d = f84(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-3.*(sqrt(2)/2)-2.*sqrt(2).*x).^2).^(1/2) - sqrt(1/2);
end

function d = f85(x,y,z)
d=(((x-1).^2 +(y).^2+(.4852)).^2+(z-(sqrt(2)/2)+2.*y).^2).^(1/2) - sqrt(1/2);
end

function d = f86(x,y,z)
d=(((x-1).^2 +(y).^2+(.4852)).^2+(z-3.*(sqrt(2)/2)+2.*y).^2).^(1/2) - sqrt(1/2);
end

function d = f87(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z-(sqrt(2)/2)+4.*y).^2).^(1/2) - sqrt(1/2);
end

function d = f88(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z-3.*(sqrt(2)/2)+4.*y).^2).^(1/2) - sqrt(1/2);
end

function d = f91(x,y,z)
d=(((x).^2 +(y).^2+(.4852)).^2+(z-(2/3).*sqrt(2)).^2).^(1/2) - sqrt(4/9);
end

function d = f92(x,y,z)
d=(((x).^2 +(y).^2+(.4852)).^2+(z-(4/3).*sqrt(2)).^2).^(1/2) - sqrt(4/9);
end

function d = f93(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-(2/3).*sqrt(2)-2.*sqrt(2).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f94(x,y,z)
d=(((x).^2 +(y-sqrt(2)).^2+(.4852)).^2+(z-(4/3).*sqrt(2)-2.*sqrt(2).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f95(x,y,z)
d=(((x-(2/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z+(4/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f96(x,y,z)
d=(((x-(2/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - (4/3).*sqrt(2) +(4/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f97(x,y,z)
d=(((x-(2/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - 2.*sqrt(2) +(4/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f98(x,y,z)
d=(((x-(2/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z +(4/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f99(x,y,z)
d=(((x-(2/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z - (4/3).*sqrt(2) +(4/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f910(x,y,z)
d=(((x-(2/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z - 2.*sqrt(2) +(4/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f911(x,y,z)
d=(((x-(4/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - (2/3).*sqrt(2) +(8/3).*y - (2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f912(x,y,z)
d=(((x-(4/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - (4/3).*sqrt(2) +(8/3).*y - (2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f913(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z - (2/3).*sqrt(2) +4.*y).^2).^(1/2) - sqrt(4/9);
end

function d = f914(x,y,z)
d=(((x-2).^2 +(y).^2+(.4852)).^2+(z - (4/3).*sqrt(2) +4.*y).^2).^(1/2) - sqrt(4/9);
end

function d = f915(x,y,z)
d=(((x-(2/9)).^2 +(y-(5.*sqrt(2)/9)).^2+(.4852)).^2+(z-(4/3).*sqrt(2)+(4/9).*y-(10.*sqrt(2)/9).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f916(x,y,z)
d=(((x-(4/9)).^2 +(y-(sqrt(2)/9)).^2+(.4852)).^2+(z-(4/9).*sqrt(2)+(8/9).*y-(2.*sqrt(2)/9).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f917(x,y,z)
d=(((x-(8/9)).^2 +(y-(2.*sqrt(2)/9)).^2+(.4852)).^2+(z-(16/9).*sqrt(2)+(16/9).*y-(4.*sqrt(2)/9).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f918(x,y,z)
d=(((x-(2/9)).^2 +(y-(4.*sqrt(2)/9)).^2+(.4852)).^2+(z-(10/9).*sqrt(2)+(4/9).*y-(8.*sqrt(2)/9).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f919(x,y,z)
d=(((x-(10/9)).^2 +(y-(2.*sqrt(2)/9)).^2+(.4852)).^2+(z-(4/3).*sqrt(2)+(20/9).*y-(4.*sqrt(2)/9).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f920(x,y,z)
d=(((x-(14/9)).^2 +(y-(sqrt(2)/9)).^2+(.4852)).^2+(z-(10/9).*sqrt(2)+(28/9).*y-(2.*sqrt(2)/9).*x).^2).^(1/2) - sqrt(4/9);
end

function d = f111(x,y,z)
d=(((x-(2/11)).^2 +(y-(3.*sqrt(2)/11)).^2+(.4852)).^2+(z-(8/11).*sqrt(2)+(4/11).*y-(6.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f112(x,y,z)
d=(((x-(4/11)).^2 +(y-(6.*sqrt(2)/11)).^2+(.4852)).^2+(z-(10/11).*sqrt(2)+(8/11).*y-(12.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f113(x,y,z)
d=(((x-(8/11)).^2 +(y-(sqrt(2)/11)).^2+(.4852)).^2+(z-(2/11).*sqrt(2)+(16/11).*y-(2.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f114(x,y,z)
d=(((x-(10/11)).^2 +(y-(4.*sqrt(2)/11)).^2+(.4852)).^2+(z-(4/11).*sqrt(2)+(20/11).*y-(8.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f115(x,y,z)
d=(((x-(16/11)).^2 +(y-(2.*sqrt(2)/11)).^2+(.4852)).^2+(z-(8/11).*sqrt(2)+(32/11).*y-(4.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f116(x,y,z)
d=(((x-(2/11)).^2 +(y-(8.*sqrt(2)/11)).^2+(.4852)).^2+(z-(18/11).*sqrt(2)+(4/11).*y-(16.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f117(x,y,z)
d=(((x-(4/11)).^2 +(y-(5.*sqrt(2)/11)).^2+(.4852)).^2+(z-(20/11).*sqrt(2)+(8/11).*y-(10.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f118(x,y,z)
d=(((x-(6/11)).^2 +(y-(2.*sqrt(2)/11)).^2+(.4852)).^2+(z-(6/11).*sqrt(2)+(12/11).*y-(4.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f119(x,y,z)
d=(((x-(12/11)).^2 +(y-(4.*sqrt(2)/11)).^2+(.4852)).^2+(z-(2/11).*sqrt(2)+(24/11).*y-(8.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f1110(x,y,z)
d=(((x-(14/11)).^2 +(y-(sqrt(2)/11)).^2+(.4852)).^2+(z-(16/11).*sqrt(2)+(28/11).*y-(2.*sqrt(2)/11).*x).^2).^(1/2) - sqrt(4/11);
end

function d = f121(x,y,z)
d=(((x-(1/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z+(2/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(1/3);
end

function d = f122(x,y,z)
d=(((x-(1/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z - sqrt(2)+(2/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(1/3);
end

function d = f123(x,y,z)
d=(((x-(1/3)).^2 +(y-(2.*sqrt(2)/3)).^2+(.4852)).^2+(z - 2.*sqrt(2)+(2/3).*y-(4.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(1/3);
end

function d = f124(x,y,z)
d=(((x-(1/3)).^2 +(y-(sqrt(2)/3)).^2+(.4852)).^2+(z - (2/3).*sqrt(2)+(2/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(1/3);
end

function d = f125(x,y,z)
d=(((x-(1/3)).^2 +(y-(sqrt(2)/3)+(.4852)).^2).^2+(z - (5/3).*sqrt(2)+(2/3).*y-(2.*sqrt(2)/3).*x).^2).^(1/2) - sqrt(1/3);
end

function d = f161(x,y,z)
d=(((x).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f162(x,y,z)
d=(((x).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z - (sqrt(2)/2) - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f163(x,y,z)
d=(((x).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z - (sqrt(2)) - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f164(x,y,z)
d=(((x).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z - 3.*(sqrt(2)/2) - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f165(x,y,z)
d=(((x).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z - (2.*sqrt(2)) - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f166(x,y,z)
d=(((x-1).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z + 2.*y - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f167(x,y,z)
d=(((x-1).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z -(sqrt(2)/2) + 2.*y - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f168(x,y,z)
d=(((x-1).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z -(sqrt(2)) + 2.*y - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f169(x,y,z)
d=(((x-1).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z -3.*(sqrt(2)/2) + 2.*y - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

function d = f1610(x,y,z)
d=(((x-1).^2 +(y-(sqrt(2)/2)).^2+(.4852)).^2+(z -(2.*sqrt(2)) + 2.*y - sqrt(2).*x).^2).^(1/2) - sqrt(1/4);
end

