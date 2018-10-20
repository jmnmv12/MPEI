clear all

sigma = 2; % desvio padrao
media = 14; % media
n = 1e5;

x=0:0.01:20;
y = sigma .* randn(1,n) + media;
histogram(y,'Normalization','pdf');
hold on
normalizada=normpdf(x,media,sigma);
plot(x,normalizada);
hold off
%%a)
sucessos=sum(y>12 & y<16);
prob=sucessos/n;
disp("Probabilidade (12<x<16) simulada: "+prob)

%%b)
sucessos=sum(y>10 & y<18);
prob=sucessos/n;
disp("Probabilidade (10<x<18) simulada: "+prob)


%%c)
sucessos=sum(y>=10); % Outra opção length(find(y>=10))
prob=sucessos/n;
disp("Probabilidade (x>=10) simulada: "+prob)

