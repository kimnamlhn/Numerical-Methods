function[yc] = BPNN_Ex10_page38(xx,yy,xc)
N = length(xx); X = sum(xx); lY = sum(log(yy));
XX = sum(xx.*xx); XlY = sum(xx.*log(yy));
syms A B;
[A, B] = solve(XX*A + X*B == XlY, X*A + N*B == lY);
syms x;
a = exp(B);
b = A;
R = a*exp(b*x);
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