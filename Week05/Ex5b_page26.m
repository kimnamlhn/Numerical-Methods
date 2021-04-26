function[xn]= Ex5b_page26(A,C,del_F)
format long
n=numel(C);
B=-A./diag(A)+eye(n);
G=C./diag(A);
x0=G; k=1; xn=x0;
fprintf("   ");
for i=1:n
    fprintf("x%d\t\t\t\t",i);
end
fprintf("F(x)\t\t");
fprintf("|F(x)| < 10^-3");
fprintf("\n");
while 1
    xn(1)=B(1,:)*x0+G(1);
    for i=2:n
        xn(i)=0;
        for j=1:i-1
            xn(i)=xn(i)+B(i,j)*xn(j);
        end
        for j=i:n
            xn(i)=xn(i)+B(i,j)*x0(j);
        end
        xn(i)=xn(i)+G(i);
    end
    fX=norm(A*xn-C);
    for i=1:n
        fprintf("%f\t\t",xn(i));
    end
    fprintf("%f",fX);
    if fX < del_F
        fprintf("\t\t\tTrue\n");
        break;
    end
        fprintf("\t\t\tFalse\n");
    x0=xn;
    k=k+1;
end
end