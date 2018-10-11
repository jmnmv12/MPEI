faces=5;
nLancamentos=2;
N=1e5;

experiencias=ceil(5*rand(nLancamentos,N));
%% Evento A

Cf_a=sum(sum(experiencias)==10);

prob=Cf_a/N