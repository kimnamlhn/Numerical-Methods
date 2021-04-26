function [c] = Ex6_page22(f,a, b, del_F)
format long
syms x
k=1; hold on
while 1
    c = a - (b-a)/ (subs(f,x,b)-subs(f,x,a))*subs(f,x,a);
    rEc = abs((c-a)/a);
    fc = subs(f,x, c);
    %T = table();
    plot(c,fc,'ro');
    if abs(fc)<= del_F
        break;
    end
    dau = sign(subs(f,x,a)* subs(f,x,c));
    if dau > 0
        a= c;
    else
        b=c;
    end
    k = k + 1;
end
end
