% Cau a
xx = [2;4;7;8];
yy = [2.2;1.8;2.7;3.1];
xc = [3;7.5];
yc = Spline(xx,yy,xc);

% Cau b
xx = [2.2;3.6;4.9;5.2;5.7;6.1];
yy = [1.4;3.2;5.1;4.4;3.9;3.2];
xc = [4;5.5];
yc = Spline(xx,yy,xc);

% Cau c
xx = [0.2;0.5;0.8;1;1.5;2;2.5;2.8];
yy = 3.^xx;
xc = [0.7;1.3;2.2;2.7];
yc = Spline(xx,yy,xc);