function[yc] = Spline(xx,yy,xc)
h=xx(2:end)-xx(1:end-1);
% VT
VT = eye(length(xx));
for i=1:length(xx)-2
    temp = zeros(1,length(xx));
    temp(i) = h(i)/6;
    temp(i+1) = (h(i)+h(i+1))/3;
    temp(i+2) = h(i+1)/6;
    VT(i+1,:) = temp;
end
% VP
VP = zeros(length(yy),1);
for i=1:length(yy)-2
    VP(i+1) = (yy(i+2)-yy(i+1))/h(i+1) - (yy(i+1)-yy(i))/h(i);
end
m = inv(VT)*VP;

M=yy(1:end-1)-m(1:end-1).*h(1:end).^2/6;
N=yy(2:end)-m(2:end).*h(1:end).^2/6;

syms x
s = sym(1);
for i=1:length(xx)-1
    s(i)=m(i+1)*(x-xx(i))^3/6/h(i) + m(i)*(xx(i+1)-x)^3/6/h(i) + M(i)*(xx(i+1)-x)/h(i)+ N(i)*(x-xx(i))/h(i);
end
yc = zeros(1,length(xc));
for i=1:length(xc)
    pos = 0;
    for j=1:length(xx)-1
        if xc(i) > xx(j)
            pos=pos+1;
        end
    end
    if (pos > 0) && (pos < length(xx)) 
        yc(i) = subs(s(pos),x,xc(i));
    end
end
hold on;
plot(xx,yy,'bo');
plot(xc,yc,'r*');
for i=1:length(xx)-1
    fplot(s(i),[xx(i) xx(i+1)]);
end
temp_xx = [xx' xc'].';
temp_yy = [yy' yc].';
T = table(temp_xx,temp_yy);
T.Properties.VariableNames = {'x' 'y'}

end