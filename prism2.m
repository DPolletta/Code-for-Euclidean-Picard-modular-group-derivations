%this script generates the fundamental domain D^(2)_{infinity}
figure(1)

v = [0 0 0; 2 0 0; 0 sqrt(2) 0; 0 0 2*sqrt(2); 2 0 2*sqrt(2); 0 sqrt(2) 2*sqrt(2)];
f = [1 2 5 4; 2 3 6 5; 1 3 6 4];

axes('XLim', [-4,4], 'YLim', [-4,4], 'Zlim', [-4,4])
view(3);
patch('Faces',f,'Vertices',v,'Edgealpha',1,'Facealpha',1)
