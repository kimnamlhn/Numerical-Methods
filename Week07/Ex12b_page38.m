xx = [1.2;1.5;1.8;2;2.5;3;3.5;4];
yy = 3.*xx+1.5.*sin(xx)-3.5.*cos(xx);
xc = [1.3;2.3;3.7];
yc = BPNN_Ex12b_page38(xx,yy,xc);
