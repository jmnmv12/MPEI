N=10000;
n=15; %nº experiencias individuais
k=6; %sucesso sair car 6 vezes
p=0.5;

lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N