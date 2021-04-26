%cau a 
clear all
clc;
format long
syms x
f = x + ln(x+2) - 10;
xo = 7;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);


%cau b 
clear all
clc;
format long
syms x
f = x + ln(x+2) - 10;
xo = 9;
del_F = 0.002;
xn = Ex4_page22(f,xo, del_F);
disp(xn);


%cau c
clear all
clc;
format long
syms x
f = x + ln(x+2) - 10;
xo = 25;
del_F = 0.003;
xn = Ex4_page22(f,xo, del_F);
disp(xn);


%cau d 
clear all
clc;
format long
syms x
f = x + ln(x+2) - 10;
xo = 3;
del_F = 0.003;
xn = Ex4_page22(f,xo, del_F);
disp(xn);