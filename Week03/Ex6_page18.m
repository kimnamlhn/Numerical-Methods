function [fx,delx]=Ex6_page18(f, phi, x, delF)
k =1; hold on
while 1;
    xn = phi(x);
    fx= subs(f,x,xn);
    rExn =abs((xn-x)/x);
    if abs (fc) < Df
        break;
    end
    x = xn;
    k = k + 1;
end