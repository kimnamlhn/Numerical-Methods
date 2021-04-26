%cau a
%phuong phap tiep tuyen
clear all
clc;
format long
syms x
f = e^x + 2^(-x) + 2* cos(x)-6;
xo = 2;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);
%phuong phap day cung
clear all
clc;
format long
syms x
f = e^x + 2^(-x) + 2* cos(x)-6;
a = 0;
b  = 8;
del_F = 0.001;
c = Ex6_page22(f, a, b, del_F);
disp(c);


%cau b
%phuong phap tiep tuyen
clear all
clc;
format long
syms x
f = ln(x-1) + cos(x-1)
xo = 2;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);
%phuong phap day cung
clear all
clc;
format long
syms x
f = ln(x-1) + cos(x-1)
a = 0;
b  = 8;
del_F = 0.001;
c = Ex6_page22(f, a, b, del_F);
disp(c);


%cau c
%phuong phap tiep tuyen
clear all
clc;
format long
syms x
f = (x-2)^2 - ln(x);
xo = 2;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);
%phuong phap day cung
clear all
clc;
format long
syms x
f = (x-2)^2 - ln(x);
a = 0;
b  = 8;
del_F = 0.001;
c = Ex6_page22(f, a, b, del_F);
disp(c);

%cau d
%phuong phap tiep tuyen
clear all
clc;
format long
syms x
f = sin(x) - e^(-x);
xo = 2;
del_F = 0.001;
xn = Ex4_page22(f,xo, del_F);
disp(xn);
%phuong phap day cung
clear all
clc;
format long
syms x
f = sin(x) - e^(-x);
a = 0;
b  = 8;
del_F = 0.001;
c = Ex6_page22(f, a, b, del_F);
disp(c);