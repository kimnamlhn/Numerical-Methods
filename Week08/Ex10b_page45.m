% Bai 10b Simpson 1/8
%% BT 3
xx = [1;2;3;4;5;6;7];
yy = [4;-6;-14;-14;0;34;94];
I = 42;
k = 2;
[I_KQ,rEI_KQ] = NewtonCotes(xx,yy,I,k)
%% BT 4
xx = [-2;-1;0;1;2;3;4];
yy = [24;1;4;3;-8;-11;36];
I = 7.2;
k = 2;
[I_KQ,rEI_KQ] = NewtonCotes(xx,yy,I,k)