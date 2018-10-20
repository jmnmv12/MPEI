%% a)
clear all %Colocar smpppppp
clf
N=1e5;
nl=4;
p=0.5;
x=0:nl;
prob=zeros(size(x));



lancamentos = rand(nl,N) > p;
for n=1:length(x)
    
    prob(n)=sum(sum(lancamentos)==x(n))/N;
    
    
end    
figure(1);
stem(x,prob);
xlabel("X");
ylabel("Probabilidade(x)");
title("Probabilidade ");
axis([-0.2 5 -0.1 0.5]);

%% b)

% valor esperado
size(prob);%%indica o size da matriz para sabermos 
Ve=sum(x.*prob) %podemos fazer a multiplicaçao elemento a elemento ou multiplicar pela transposta
variancia=sum((x.^2).*prob)-Ve^2
desvio_padrao=sqrt(variancia)

%% c)
% Teoricamente
%Binomial (n,p)n=4,p=0.5  bernoulli
Ve_teorica=nl*p
variancia_teorica=n*p*(1-p)
%formula_teorica=(factorial(nl)/(factorial(k)*factorial(nl-k)))*p^k*(1-p)^(nl-k);

%% d)

N=1e5;
nl=4;
p=0.5;
x=0:nl;
prob=zeros(size(x));


for k=0:length(x)-1
    
    prob(k+1)=(factorial(nl)/(factorial(k)*factorial(nl-k)))*p^k*(1-p)^(nl-k);
    
    
end   

figure(2);
stem(x,prob);
xlabel("X");
ylabel("Probabilidade(x)");
title("Probabilidade ");
axis([-0.2 5 -0.1 0.5]);


%% ei)

prob_i=sum(prob(x>=2))

%% eii)

prob_ii=sum(prob(x<1))

%% eiii)

prob_i=sum(prob(x>=1 & x<=3))
