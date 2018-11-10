function [ vetor ] = Binomial( n,N,p )      
%BINOMIAL Summary of this function goes here

Bern=rand(n,N)<p;
vetor=sum(Bern); %A binomial e realizao de n experiencias de bernoulli logo basta fazer rand(n,N) em vez de rand(1,N)


end

