% Giai bai 12d bang cau c
syms x1 x2 x3

disp("Cau 1")
y=x1+x2*x3;
x_a=[5,3,7];
aEx=[0.03,0.06,0.04];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)


disp("Cau 2")
y=x1^2+x2*x3^3;
x_a=[2,4,6];
aEx=[0.05,0.02,0.03];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)


disp("Cau 3")
y=x3*sqrt(x1+x2);
x_a=[3,7,3];
aEx=[0.05,0.07,0.02];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)


disp("Cau 4")
y=x1*x2/x3;
x_a=[3,7,10];
aEx=[0.08,0.03,0.1];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)


disp("Cau 5")
y=x1*(x2+x3)-x2*x3;
x_a=[8,4,3];
aEx=[0.09,0.02,0.04];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)


disp("Cau 6")
y=log(x1*x2-x3);
x_a=[7,5,2];
aEx=[0.05,0.02,0.03];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)


disp("Cau 7")
y=x1*sin(x2)-cos(x3);
x_a=[3,0,1];
aEx=[0.06,0.02,0.04];
n=3;
[aEy,rEy]=Ex12c_page14(y,x_a,aEx,n);
aEy=round(double(aEy),4)
rEy=round(double(rEy),4)