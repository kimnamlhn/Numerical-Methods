% k = 1 : Sai phan tien
% k = 2 : Sai phan lui

%% Bai 7 SPT
x = 1;
xx = [0.9;1;1.1;1.2;1.3;1.4];
yy = [0.7833;0.8415;0.8912;0.9320;0.9636;0.9854];
df = 0.5403;
k = 1;
[df_SPT, rEdf_SPT] = SPL(x,xx,yy,df,k)

%% Bai 7 SPL
x = 1;
xx = [0.9;1;1.1;1.2;1.3;1.4];
yy = [0.7833;0.8415;0.8912;0.9320;0.9636;0.9854];
df = 0.5403;
k = 2;
[df_SPL, rEdf_SPL] = SPL(x,xx,yy,df,k)