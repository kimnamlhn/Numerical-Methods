function[I_KQ,rEI_KQ]= Gauss(f,a,b,I,k)
syms t;
if(k==1)
    w1 = 1; x12=-0.577350269189626; t12= (b-a)*x12/2+(a+b)/2;
    w2 = 1; x22= 0.577350269189626; t22= (b-a)*x22/2+(a+b)/2;
    I_KQ=(b-a)/2*(w1*subs(f,t,t12)+w2*subs(f,t,t22));
end
if(k==2)
    w1 = 0.5556; x13=-0.7746; t13= (b-a)*x13/2+(a+b)/2;
    w2 = 0.8889; x23= 0; t23= (b-a)*x23/2+(a+b)/2;
    w3 = 0.5556; x33= 0.7746; t33= (b-a)*x33/2+(a+b)/2;
    I_KQ=(b-a)/2*(w1*subs(f,t,t13)+w2*subs(f,t,t23)+w3*subs(f,t,t33));
end
if(k==3)
    w1 = 0.3479; x14=-0.8611; t14= (b-a)*x14/2+(a+b)/2;
    w2 = 0.6521; x24=-0.3340; t24= (b-a)*x24/2+(a+b)/2;
    w3 = 0.6521; x34= 0.3340; t34= (b-a)*x34/2+(a+b)/2;
    w4 = 0.3479; x44= 0.8611; t44= (b-a)*x44/2+(a+b)/2;
    I_KQ=w1*subs(f,t,t14)+w2*subs(f,t,t24)+w3*subs(f,t,t34)+w4*subs(f,t,t44);
    I_KQ= (b-a)/2*I_KQ;
end
rEI_KQ = double(abs((I-I_KQ)/I));
I_KQ = double(I_KQ);
end