function [Xn, fXn] = Ex5a_page26(A, C, del_F)
format long
B = -A./diag(A) + eye(n);
G = C./diag(A);

X0 = G;
k = 1;
disp("          X1                 X2                    X3                fXn");
while 1
    Xn = B * X0 +G;
    rEx = norm((Xn -X0)./X0);
    fXn = norm(A* Xn -C);
    disp([Xn(1) Xn(2) Xn(3) fXn]);
    if fXn <= del_F
        break;
    else
        X0 = Xn;
        k = k + 1;
    end
end

end