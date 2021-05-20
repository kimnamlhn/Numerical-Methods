format long
% Phan chay cua da thuc tong quat chay voi ma tran co kich thuoc N
% O day se lay vi du la bai tap 3
xx = [1 2.2 3.1 4];
yy = [1.678 3.267 2.198 3.787];
xc = 2.5;
disp('Ket Qua Cua Bai 7 Khi Su Dung Da Thuc NewTon, x =2.5 la: ');
yc = vpa(Newton(xx,yy,xc));
disp(yc);
