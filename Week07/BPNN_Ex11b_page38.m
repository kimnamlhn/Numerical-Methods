function[yc] = BPNN_Ex11b_page38(xx,yy,xc)
N = length(xx); lX = sum(log(xx)); lX2 = sum(log(xx).*log(xx));
lY = sum(log(yy)); lXY = sum(log(xx).*log(yy));
syms A B;
[A, B] = solve(lX2*A + lX*B == lXY, lX*A + N*B == lY);
syms x;
a = exp(B);
b = A;
R = a*x^b;
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