%% Codigo a)

N=10000;

experiencas=rand(2,N);
filhos=experiencas>0.5;
r=sum(filhos); %soma as colunas
sucessos=r>=1;% ter pelo menos um filho rapaz
sum(sucessos)/N

%% Codigo b)

%%2 situações, 1 em q existem 1 M e um F, outra em q existe dois M

%% Codigo c)


N=1e8;

filhos=rand(2,N)>0.5;
filho1=sum(filhos)>= 1; %casos possiveis pelo menos 1 filho rapaz
filho2=sum(filhos)== 2; %casos favoráveis 2 filhos rapazes
prob_total=sum(filho2) / sum(filho1);

fprintf('\n-----------------------\nAlínea c: Valor por simulação: ')
disp(prob_total)

%% Codigo d)

N=1e8;

filhos=rand(2,N)>0.5;
filho1=sum(filhos)==2;  %casos favoraveis 2 filhos rapaz
filho2=filhos(1,:); %casos possiveis 1º filho rapaz
prob_total=sum(filho1) / sum(filho2);

fprintf('\n-----------------------\nAlínea d: Valor por simulação: ')
disp(prob_total)

%% Codigo e)

N=1e8;

filhos=rand(5,N)>0.5;
filho1=sum(filhos)>=1;  %casos possiveis 1 filhos rapaz
filho2=sum(filhos)==2; %casos favoraveis 2 filho rapaz
prob_total=sum(filho2) / sum(filho1);

fprintf('\n-----------------------\nAlínea e: Valor por simulação: ')
disp(prob_total)

%% Codigo f)

N=1e8;

filhos=rand(5,N)>0.5;
filho1=sum(filhos)>=1;  %casos possiveis 1 filhos rapaz
filho2=sum(filhos)>=2; %casos favoraveis 2 filho rapaz ou mais
prob_total=sum(filho2) / sum(filho1);

fprintf('\n-----------------------\nAlínea f: Valor por simulação: ')
disp(prob_total)
