function[aEu,rEu]=Ex13d_page14(u,x_a,y_a)
syms x y
u_a=subs(u,[x,y],[x_a,y_a]);
u_p=round(double(u_a),3);
aEu=abs(u_a-u_p);
rEu=abs(aEu/u_a);
end