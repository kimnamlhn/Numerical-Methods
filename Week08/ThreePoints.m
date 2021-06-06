function[df_KQ,rEdf_KQ]= ThreePoints(x,xx,yy,df,k)
i = find(xx==x);
n = length(xx);
if(k==1)
    if(i+2<=n)
        df_KQ = (-3*yy(i)+4*yy(i+1)-yy(i+2))/(xx(i+2)-xx(i));
    else
        error('Error: khong the tim dao ham tai vi tri x nay.')
    end
end
if(k==2)
    if (i-1>=1&&i+1<=n)
        df_KQ = (-yy(i-1)+yy(i+1))/(xx(i+1)-xx(i-1));
    else
        error('Error: khong the tim dao ham tai vi tri x nay.')
    end
end
rEdf_KQ = abs((df-df_KQ)/df);
end