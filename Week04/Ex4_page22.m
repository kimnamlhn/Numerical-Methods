function [xn] = Ex4_page22(f,xo,del_F)
format long
syms x
k=1; hold on
df = diff(f,x);
while 1
    xn = xo - subs(f,x,xo)/subs(df,x,xo);
    xn=double(xn);
    rExn = abs((xn-xo)/xo);
    fxn = subs(f,x, xn);
    %T = table();
    plot(xn,fxn,'ro');
    if abs(fxn)<= del_F
        break;
    else
        xo = xn;
        k = k + 1;
    end
end
end
