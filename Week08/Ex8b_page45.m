% k = 1 : 3 diem cuoi
% k = 2 : 3 diem giua
%% Bai 8 3 diem cuoi
x = 1;
xx = [0.9;1;1.1;1.2;1.3;1.4];
yy = [0.7833;0.8415;0.8912;0.9320;0.9636;0.9854];
df = 0.5403;
k = 1;
[df_3DC, rEdf_3DC] = ThreePoints(x,xx,yy,df,k)
%% Bai 8 3 diem giua
x = 1;
xx = [0.9;1;1.1;1.2;1.3;1.4];
yy = [0.7833;0.8415;0.8912;0.9320;0.9636;0.9854];
df = 0.5403;
k = 2;
[df_3DG, rEdf_3DG] = ThreePoints(x,xx,yy,df,k)