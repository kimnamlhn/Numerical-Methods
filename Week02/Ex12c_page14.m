function[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n)
x=sym('x',[1 n]);
syms(x)
y_a=subs(y,x,x_a);
syms dy
for i=1:1:n 
    dy(end+1)=diff(y,x(i));
end
dy=dy(2:end);
syms dy_a
for i=1:1:n
    dy_a(end+1)=subs(dy(i),x,x_a);
end
dy_a=dy_a(2:end);
aEy=0;
for i=1:1:n
    aEy=aEy+abs(dy_a(i))*aEx(i);
end
rEy = aEy/abs(y_a);
end
