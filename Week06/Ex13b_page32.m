function[] = Ex13b_page32(xx,yy,xc)
X = zeros(length(xx));
Y = yy.';
for i=1:length(xx)
    temp = zeros(1,length(xx));
    for j=1:length(xx)-1
        temp(1) = 1;
        temp(j+1) = xx(i)^j;
    end
    X(i,:) = temp;
end
syms x;
P = 0;
A = X\Y;
for i=1:length(xx)
    P = P + A(i)*x^(i-1);
end
yc = zeros(1,length(xc));
for i=1:length(xc)
    yc(i) = subs(P,x,xc(i));
end
temp_xx = [xx xc].';
temp_yy = [yy yc].';
T = table(temp_xx,temp_yy);
T.Properties.VariableNames = {'x' 'y'}
fplot(P,[min(temp_xx) max(temp_xx)]);
hold on;
plot(xx,yy,'bo');
plot(xc,yc,'r*');
end