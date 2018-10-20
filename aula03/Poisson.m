function [ pk ] = Poisson( media,k,n )
% Calcula a probabildade de k em fun��o da Lei de Poisson

alpha=media*n;
pk=((alpha^k)/factorial(k))*exp(-alpha);

end

