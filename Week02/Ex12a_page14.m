function[aEy,rEy]=Ex12a_page14(f,x_a,aEx)
x=sym('x',[1 2]);
Df=subs(subs([diff(f,x1),diff(f,x2)],x1,Xa(1)),x2,Xa(2));
S=0;
for ii = 1:2
	S= S + abs(Df(ii))* abs(aEX(ii));
end
aEY = S;
rEy = aEy/abs(subs(subs(f,x1,Xa(1)),x2,Xa(2)));
end
