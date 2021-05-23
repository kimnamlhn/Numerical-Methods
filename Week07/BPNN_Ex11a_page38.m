function[yc] = BPNN_Ex11a_page38(xx,yy,xc)
N = length(xx); X4 = sum(xx.^4); X2 = sum(xx.^2);
X2Y = sum(yy.*xx.^2); Y = sum(yy);
syms a b;
[a, b] = solve(X4*a + X2*b == X2Y, X2*a + N*b == Y);
syms x;
R = a*x^2+b;
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