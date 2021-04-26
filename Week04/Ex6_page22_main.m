%cau a, b trong Ex6_page22

%cau c
clear all
clc;
format long
syms x
f = x^2 - sin(x) - 50;
a = 0;
b  = 8;
del_F = 0.003;
c = Ex6_page22(f, a, b, del_F);
disp(c);

