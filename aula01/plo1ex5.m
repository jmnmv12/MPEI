%%Código a)
close all;
clear all;
N=1e6;
n=5;%amostra de 5 torneiras
p=0.3;%o.3 de prob de ter defeito
k=3; %3 torneiras com defeito

prob=calcp(p,k,n,N);
fprintf(1,'P(%d peças defeituosas em %d peças)=%.4f\n',k,n,prob)

prob_analitica= factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)


%%Código b)
clear;
N=1e6;
n=5;%amostra de 5 torneiras
p=0.3;%o.3 de prob de ter defeito
k=2;

N_torneiras = rand(n,N) > p;
sucessos= sum(N_torneiras)<=k; %no maximo 2
probSimulacao= sum(sucessos)/N

%%Código c)
clear;
N=1e6;
n=5;%amostra de 5 torneiras
p=0.3;%o.3 de prob de ter defeito


prob=zeros(1,n+1);%recomendado

for k=0:n
   
    prob(k+1)=calcp(p,k,n,N);
    fprintf(1,'P(%d peças defeituosas em %d peças)=%.4f\n',k,n,prob(k+1))
    
end

figure(1);
bar(1:6,prob),colormap(cool)

figure(2);
hist(prob,5)