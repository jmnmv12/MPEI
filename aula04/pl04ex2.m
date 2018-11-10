%% a)
%rand(1,10)<p; continuo

%% b) trata-se de um dado por isso temos que arredondar

b=floor(rand(1,15)*6)+1; %discreto so os numeros do dado por isso somamos 6,as 6 faces do dado
hist(b,1:6)
%% c)
numbers=rand(1,20)*14-4; %rand(n,N)*gama de valores+minimo valor

hist(numbers,-4.5:10.5)