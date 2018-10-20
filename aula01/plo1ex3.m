N=10000;
n=15; %nº experiencias individuais
k=6; %sucesso sair car 6 vezes
p=0.5;

	
sucessos= sum(lancamentos)>=k; %maior ou igual a 6
probSimulacao= sum(sucessos)/N

%%Segunda vers~ao-somatorios
prob=0;
for k=6:n
    prob=prob + factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end

prob
  