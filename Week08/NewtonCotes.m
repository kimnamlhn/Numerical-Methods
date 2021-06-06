function[I_KQ,rEI_KQ]= NewtonCotes(xx,yy,I,k)
n = length(xx);
I_KQ = 0;
if(k==1)
    for i=1:n-1
        I_KQ = I_KQ + ((xx(i+1)-xx(i))*(yy(i+1) + yy(i))/2);
    end
end
if(k==2)
    for i=1:2:n-2
        I_KQ = I_KQ + ((xx(i+2)-xx(i))*(yy(i+2) + 4*yy(i+1) + yy(i))/6);
    end
end
if(k==3)
    for i=1:3:n-3
        I_KQ = I_KQ + ((xx(i+3)-xx(i))*(yy(i+3) + 3*yy(i+2) + 3*yy(i+1) + yy(i))/8);
    end
end
rEI_KQ = abs((I-I_KQ)/I);
end