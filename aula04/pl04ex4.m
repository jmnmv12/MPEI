%% testar funçao Binomial
%simulação
N=1e6;
n=10;
p=0.3;
X=Binomial(n,N,p);
subplot(2,1,1)
mhist(X);
title('Binomial n=10 p=0.3');

%teorico
prob=zeros(1,n);

for k=0:n
    prob(k+1)=(factorial(n)/(factorial(k)*factorial(n-k)))*p^k*(1-p)^(n-k);
    
    
end

subplot(2,1,2)
stem([0:10],prob)