function[yc] = BPNN_Ex9_page38(xx,yy,xc)
N = length(xx); X = sum(xx); Y = sum(yy);
XX = sum(xx.*xx); XY = sum(xx.*yy);
syms a b;
[a, b] = solve(XX*a + X*b == XY, X*a + N*b == Y);
syms x;
R = a*x+b;
yc = double(subs(R,x,xc));
temp_xx = [xx' xc'].';
temp_yy = [yy' yc].';
T = table(temp_xx,temp_yy);
T.Properties.VariableNames = {'x' 'y'}
fplot(R,[min(temp_xx) max(temp_xx)]);
hold on;
plot(xx,yy,'bo');
plot(xc,yc,'r*');
end