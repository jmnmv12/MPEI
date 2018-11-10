function [ y ] = pmf( xi,pX,N )
%Fun�ao de dist. discreta com parametros xi, px e Numero de numeros a gerar

y=zeros(1,N);
for j=1:N
   U=rand();
   i=1+sum(U>cumsum(pX));%% o cumsum danos a fun�ao de dist acumulada e vamos ver onde o U se encaixa e somamos 1 para obter o indice em rela�ao a xi
   y(j)=xi(i);
    
end


end

