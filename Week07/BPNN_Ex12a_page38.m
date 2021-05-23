function[yc] = BPNN_Ex12a_page38(xx,yy,xc)
N = length(xx);
X = sum(xx); X2 = sum(xx.^2); X3 = sum(xx.^3); X4 = sum(xx.^4);
Y = sum(yy); XY = sum(xx.*yy); X2Y = sum(yy.*xx.^2);
syms a b c;
[a, b, c] = solve(X4*a + X3*b + X2*c == X2Y, X3*a + X2*b + X*c == XY, X2*a + X*b + N*c == Y);
syms x;
R = a*x^2+b*x+c;
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