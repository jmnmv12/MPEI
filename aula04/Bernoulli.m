function [ prob ] = Bernoulli( prob_desucesso,N )
%BERNOULLI Summary of this function goes here

    prob=rand(1,N)< prob_desucesso;
    

end

