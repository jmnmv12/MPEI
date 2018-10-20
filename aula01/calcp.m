function [probSimulacao]=calcp(p,k,n,N)
%Calculo de probabilidade de k sucessos em n experiencias 
%por simulacao (N repeticoes) diferente de tratamento teorico
%by JV set 2018



lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k; %maior ou igual a 6
probSimulacao= sum(sucessos)/N;







end