
n=8; % grado del binomio
k=4; % coeficientes
if n>=k
        for i=1:n+1
            c(i,1)=1;
        end
        for i=2:n+1  % k+1
            c(i,i)=1;
        end
        %%%%%%%%%%%%%%%%%%
        for i=3:n+1
            for j=2:k+1 % i-1
                c(i,j)=c(i-1,j)+c(i-1,j-1);
            end
        end
        %%%%% Solucion
        c(n+1,k+1)
else
    'no se puede obtener el coeficiente';
end
