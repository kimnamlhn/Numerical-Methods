function [c, fc] = Ex4_page18(f,a,b,Df)
k =1; hold on
while 1;
    c=(a+b)/2;
    fc= subs(f,x,c);
    rEc =abs((a-c)/a);
    disp =([k c fc]);
    plot (k, fc, 'ro');
    if abs (fc) < Df
        break;
    end
    if f(a) * f(c) > 0 
        a = c;
    else 
        b = c;
    end
    k = k + 1;
end