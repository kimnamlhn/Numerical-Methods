% Su dung function 13d

syms x y

disp("Cau a")
x_a=1.976;
y_a=0.532;
u=log(2*y+x^2);
[aEu,rEu]=Ex13d_page14(u,x_a,y_a);
aEu=double(aEu)
rEu=double(rEu)


disp("Cau b")
x_a=1.675;
y_a=1.073;
u=y*exp(x)-x^2;
[aEu,rEu]=Ex13d_page14(u,x_a,y_a);
aEu=double(aEu)
rEu=double(rEu)


disp("Cau c")
x_a=-1.395;
y_a=1.643;
u=x*tan(y)+(x+y)^2;
[aEu,rEu]=Ex13d_page14(u,x_a,y_a);
aEu=double(aEu)
rEu=double(rEu)
