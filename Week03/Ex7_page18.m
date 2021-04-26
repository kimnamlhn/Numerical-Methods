syms x;
f = x - x/2;
phi = x/2 + 1/x;

%cau a
x0 = 1;
delF = 0.001;
[fx,delx]=Ex6_page18(f, phi, x, delF);
fx;
delx;

%cau b
x0 = 2;
delF = 0.003;
[fx,delx]=Ex6_page18(f, phi, x, delF);
fx;
delx;

%cau c
x0 = -2;
delF = 0.01;
[fx,delx]=Ex6_page18(f, phi, x, delF);
fx;
delx;

%cau d
x0 = -5;
delF = 0.0001;
[fx,delx]=Ex6_page18(f, phi, x, delF);
fx;
delx;