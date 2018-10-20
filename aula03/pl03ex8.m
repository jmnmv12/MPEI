clear all

prob=zeros(1,4);
repeticoes=4


for n=1:repeticoes
   
   prob(n)=(n+5)/30;
    
end

figure(1);
stem(prob)

% Para poder representar a funçao de probabilidade
% prob>=0,prob<=1,sum(prob)==1

axioma1=prob>=0
axioma2=prob<=1

if sum(prob)==1
    disp("Como f(x) verifica os 2 axiomas e a soma de probabilidades==1 trata-se de uma função de massa de probabilidade!!")
else
    disp("f(x) verifica os 2 axiomas,mas a soma de probabilidades!=1 logo não se trata de uma função de massa de probabilidade!!")
end


% Logo  verifica-se que f(x) pode representar a funçao de probabilidade