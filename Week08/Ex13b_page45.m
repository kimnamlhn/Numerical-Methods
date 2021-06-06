% Bai 13b Gauss 2 diem nut
%% BT 5
syms t
f = exp(t);
a = 2;
b = 4;
I = double(int(f,t,a,b))
k = 1;
[I_KQ,rEI_KQ] = Gauss(f,a,b,I,k)
%% BT 6
syms t
f = sin(t);
a = 0;
b = pi;
I = double(int(f,t,a,b))
k = 1;
[I_KQ,rEI_KQ] = Gauss(f,a,b,I,k)