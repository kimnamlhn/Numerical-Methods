syms x;
f = exp(x) - x
%cau a
a = 0;
b = 3;
delF = 0.001;
[c,fc]=Ex4_page18(f,a,b);
c;
fc;

%cau b
a = 0;
b = 2;
delF = 0.005;
[c,fc]=Ex4_page18(f,a,b);
c;
fc;

%cau c
a = -3;
b = 0;
delF = 0.0001;
[c,fc]=Ex4_page18(f,a,b);
c;
fc;

%cau d
a = -3;
b = -1;
delF = 0.0001;
[c,fc]=Ex4_page18(f,a,b);
c;
fc;