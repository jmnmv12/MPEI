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
bar(prob)

%simulação



%% b)
% Probabilidade acumulada ate X=2

prob=sum(prob(1,[1:3]));

disp("Probabilidade de no maximo 2 das peças serem defeituosas: "+prob);