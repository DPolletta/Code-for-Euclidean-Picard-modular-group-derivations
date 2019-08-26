 %this script generates the fundamental domain D^(11)_{infinity}
figure(1)

v = [0 0 0; 1 0 0; 1/2 sqrt(11)/2 0; 0 0 2*sqrt(11); 1 0 2*sqrt(11); 1/2 sqrt(11)/2 2*sqrt(11)];
f = [1 2 5 4; 2 3 6 5; 1 3 6 4];

axes('XLim', [-2,4], 'YLim', [-2,4], 'Zlim', [-2,10])
view(3);
patch('Faces',f,'Vertices',v,'Edgealpha',1,'Facealpha',1)
