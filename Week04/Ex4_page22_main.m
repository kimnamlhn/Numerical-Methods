% cau a, b ở hàm Ex4_page22

%cau c 
clear all
clc;
format long
syms x
f = x^2 - sin(x) - 50;
xo = 2;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);


%cau d
clear all
clc;
format long
syms x
f = x^3 + 6*x^2 + 2*x + 25;
xo = 4;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);