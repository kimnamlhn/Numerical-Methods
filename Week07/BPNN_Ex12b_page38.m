function[yc] = BPNN_Ex12b_page38(xx,yy,xc)
sinX2 = sum(sin(xx).^2); cosX2 = sum(cos(xx).^2);
sinXcosX = sum(sin(xx).*cos(xx));
ysinX = sum(yy.*sin(xx)); ycosX = sum(yy.*cos(xx));
XsinX = sum(xx.*sin(xx));
XcosX = sum(xx.*cos(xx));
XY = sum(xx.*yy);
X2 = sum(xx.*xx);
syms a b c;
[a, b, c] = solve(XcosX*a + sinXcosX*b + cosX2*c == ycosX, ...
                  XsinX*a + sinX2*b + sinXcosX*c == ysinX, ...
                  X2*a + XsinX*b + XcosX*c == XY);
syms x;
R = a*x+b*sin(x)+c*cos(x);
yc = double(subs(R,x,xc));
temp_xx = [xx' xc'].';
temp_yy = [yy' yc'].';
T = table(temp_xx,temp_yy);
T.Properties.VariableNames = {'x' 'y'}
fplot(R,[xx(1) xx(end)]);
hold on;
plot(xx,yy,'bo');
plot(xc,yc,'r*');
end