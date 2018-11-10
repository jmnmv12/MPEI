%% a)
%probabilidade de defeito=0.3
%Variavel aleatoria X [0,1,2,3,4,5]

prob_desucesso=0.3; %sucesso e ter peças defeituosas
X=[0:5];
prob=zeros(1,length(X));
n=5;

for k=0:5
    prob(k+1)=(factorial(n)/(factorial(k)*factorial(n-k)))*prob_desucesso^k*(1-prob_desucesso)^(n-k);
    
    
end
subplot(2,1,1)
bar(X,prob)
xlabel('x');
ylabel('Probabilidade (xi)');
title("Probabilidade de X (Teorico)");

%simulação

probsimu=zeros(1,length(X));
N=1e4;

for k=0:5
    experiencias=rand(n,N)< 0.3;
    sucessos=sum(experiencias)==k;
    probsimu(k+1)=sum(sucessos)/N;
    
    
end
subplot(2,1,2)
bar(X,probsimu) 
xlabel('x');
ylabel('Probabilidade (xi)');
title("Probabilidade de X (Simulado)");




%% b)
% Probabilidade acumulada ate X=2

prob=sum(prob(1,[1:3]));

disp("Probabilidade de no maximo 2 das peças serem defeituosas: "+prob);