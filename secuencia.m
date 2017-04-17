clear all
x= ['s','p','r','k','i','n','t','i','m','e'];
y= ['p','r','i','n','t','i','n','g'];

n=length(x);
m=length(y);
%%%%%%%% solucion
 solX=zeros(1,n);
  solY=zeros(1,m);
%%%%%%%%
L=zeros(n+1,m+1);

for i=1:n
    for j=1:m
        if x(i)==y(j)
            L(i+1,j+1)=L(i,j)+1;
            solX(1,i)=1;
            solY(1,j)=1;
        else             
            if (L(i,j+1)>=L(i+1,j))
                L(i+1,j+1)=L(i,j+1);
            else
                L(i+1,j+1)=L(i+1,j);
            end      
        end
    end
end
    
%%%%%%%%%% solucion
for i=1:length(solX)
    if solX(i)==1
        solucion(i)=x(i);
    else
         solucion(i)='/';
    end
end
solucion
C = strsplit(solucion,'/');

for i=1:length(C)-1
    aux=length(C(i))
    if (aux < length(C(i+1)))
              aux= C(i+1);                                           
    end
end
    
