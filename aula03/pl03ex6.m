%% Poisson
clear all

n=8000;
k=7;
probdefeito=1/1000;
[prob]=Poisson(probdefeito,k,n);
disp("Probabilidade de haver 7 chips defeituosos em 80000: "+prob)

prob_graph=zeros(1,25);

for m=1:25
    prob_graph(m)=Poisson(probdefeito,m-1,n);
    
    
end
prob_graph
x=0:24;
stem(x,prob_graph,'o');
hold on


%% Distribuição Binomial

n=8000;
k=7;
p=1/1000;

probBinomial=prod(n-k+1:n)/factorial(k) * p^k * (1-p)^(n-k); % não dá para calcular com factorial

disp(probBinomial)

prob_graph1=zeros(1,25);

for m=0:24
   prob_graph1(m+1)=prod(n-m+1:n)/factorial(m)*p^(m)*(1-p)^(n-m);
    
    
end
prob_graph1
x=0:24;
stem(x,prob_graph1,'x')
hold off



