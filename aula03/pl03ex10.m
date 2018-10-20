%Variavel aleatoria continua uniformemente distribuida
%% a)

a=0;
b=10;
N=1e7;

prob=(3-0)/(b-a); %prob de x<3

experiencias=rand(1,N)*10;
sucessos=sum(sum(experiencias<3));
prob_simulacao=sucessos/N;

disp("Probabilidade (x<3) teórica:"+prob+" e simulada: "+prob_simulacao)



%% b)

prob=(10-7)/(b-a); %prob de x>7

experiencias=rand(1,N)*10;
sucessos=sum(sum(experiencias>7));
prob_simulacao=sucessos/N;

disp("Probabilidade (x>7) teórica:"+prob+" e simulada: "+prob_simulacao)

%% c)

prob=(6-1)/(b-a); %prob de 6>x>1

experiencias=rand(1,N)*10; % NAO USAR RANDI. Trata-se de uma variavel continua,logo usamos rand porque randi gera so numeros inteiros e nos queremos todos os numeros entre 0 e 10.
sucessos=sum(experiencias<6 & experiencias >1);
prob_simulacao=sucessos/N;

disp("Probabilidade (1<x<6) teórica:"+prob+" e simulada: "+prob_simulacao)
