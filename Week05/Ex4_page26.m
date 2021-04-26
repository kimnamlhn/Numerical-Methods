%bai tap 4a, 4b tuong duong bai 5a, 5b voi n = 5
%bai 4c

%Kiem tra phuong phap lap
clear all;
clc;
format long

A = [6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9];
C = [9; 1; -12; -12; 5];
del_F = 0.001;

[Xn, fXn] = Ex5a_page26(A,C,del_F);

%Kiem tra phuong phap lap Seidel
clear all;
clc;
format long

A = [6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9];
C = [9; 1; -12; -12; 5];
del_F = 0.001;

[Xn, fXn] = Ex5b_page26(A,C,del_F);