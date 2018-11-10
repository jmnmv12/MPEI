%% a)
clear all
N=1e5;
nl=4;
p=0.5;
x=0:nl;
proba=zeros(size(x));



lancamentos = rand(nl,N) > p;
for n=1:length(x)
    
    proba(n)=sum(sum(lancamentos)==x(n))/N;
    
    
end    
figure(1);
stem(x,proba);
xlabel("X");
ylabel("Probabilidade(xi)");
title("Probabilidade ");
axis([-0.2 5 -0.1 0.5]);

%% b)

% valor esperado
size(proba);%%indica o size da matriz para sabermos 
Ve=sum(x.*proba); %podemos fazer a multiplicaçao elemento a elemento ou multiplicar pela transposta
variancia=sum((x.^2).*proba)-Ve^2;
desvio_padrao=sqrt(variancia);

disp("O valor esperado é: "+Ve+", a variância é: "+variancia+" e o desvio padrão é: "+desvio_padrao)

%% c)
% Teoricamente
%Binomial (n,p)n=4,p=0.5  bernoulli
Ve_teorica=nl*p;
variancia_teorica=n*p*(1-p);
%formula_teorica=(factorial(nl)/(factorial(k)*factorial(nl-k)))*p^k*(1-p)^(nl-k);
disp("O valor esperado teorico é: "+Ve_teorica+" e a variância teorica é: "+variancia_teorica);
    
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
ylabel("Probabilidade(xi)");
title("Probabilidade ");
axis([-0.2 5 -0.1 0.5]);
disp("Probabilidades calculadas na alinea a): "+mat2str(proba)+" e probabilidades calculadas na alinea d): "+mat2str(prob));

%% ei)

prob_i=sum(proba(x>=2));

disp("A probabilidade de obter pelo menos 2 coroas é: "+prob_i);

%% eii)

prob_ii=sum(proba(x<1));

disp("A probabilidade de obter até 1 coroa é: "+prob_ii);

%% eiii)

prob_iii=sum(proba(x>=1 & x<=3));

disp("A probabilidade de obter entre 1 e 3 coroas é: "+prob_iii);
