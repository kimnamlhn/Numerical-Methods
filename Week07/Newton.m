function[yc]=Newton(xx,yy,xc)
n = zeros(length(xx));
n(1,:)=yy;
for i=1:length(xx)-1
    for j=1:length(xx)-i
        n(i+1,j) = (n(i,j+1)-n(i,j))/(xx(i+j)-xx(j));
    end
end
syms x;
N = n(1,1);
for i=1:length(xx)-1
    temp = 1;
    for j=1:i
        temp = temp * (x-xx(j));
    end
    N = N + n(i+1,1)*temp;
end
N = simplify(N)
yc=double(subs(N,x,xc));
temp_xx = [xx xc].';
temp_yy = [yy yc].';
T = table(temp_xx,temp_yy);
T.Properties.VariableNames = {'x' 'y'}
fplot(N,[min(temp_xx) max(temp_xx)]);
hold on;
plot(xx,yy,'bo');
plot(xc,yc,'r*');
end