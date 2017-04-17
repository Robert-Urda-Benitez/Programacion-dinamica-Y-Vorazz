clear all
tic
T=[2,5,9,1,3,45,100,288]; % Denominaciones de las Monedas
 T=burbuja(T);
% T=sort(T,'descend')
L=2108201; % Valor que espero me devuelvan en monedas
% Cambio(T,L)
n=length(T); % longitud de las denominaciones
solucion=zeros(1,n);    
for i=n:-1:1  % i=1:n
    while T(i)<=L        
                 solucion(i)=1+solucion(i);
                 L=L-T(i);  
    end
end
toc


% 0.005586 seconds

               
