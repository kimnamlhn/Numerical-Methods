function[yc]= Ex14b_page32(xx,yy,xc)
syms x;
L = 0;
for i=1:length(xx)
    Li = 1;
    for j = 1:length(xx)
        if i == j
            continue;
        end
        Li = (Li*(x-xx(j)))/((xx(i)-xx(j)));
    end
    L = L + yy(i)*Li;
end

yc = zeros(1,length(xc));
for i=1:length(xc)
    yc(i) = subs(L,x,xc(i));
end
temp_xx = [xx xc].';
temp_yy = [yy yc].';
T = table(temp_xx,temp_yy);
T.Properties.VariableNames = {'x' 'y'}

fplot(L,[min(temp_xx) max(temp_xx)]);
hold on;
plot(xx,yy,'bo');
plot(xc,yc,'r*');
end