%cau a
clear all
clc;
format long
syms x
f = 2^x + 3^x -10*x - 30;
a = -5;
b  = -3;
del_F = 0.001;
c = Ex6_page22(f, a, b, del_F);
disp(c);


%cau b
clear all
clc;
format long
syms x
f = 2^x + 3^x -10*x - 30;
a = -4;
b  = -2;
del_F = 0.002;
c = Ex6_page22(f, a, b, del_F);
disp(c);


%cau c
clear all
clc;
format long
syms x
f = 2^x + 3^x -10*x - 30;
a = 2;
b  = 4;
del_F = 0.003;
c = Ex6_page22(f, a, b, del_F);
disp(c);


%cau d
clear all
clc;
format long
syms x
f = 2^x + 3^x -10*x - 30;
a = 2;
b  = 4;
del_F = 0.003;
c = Ex6_page22(f, a, b, del_F);
disp(c);
