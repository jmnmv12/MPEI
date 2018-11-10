function palavra = StringGenerator(min,max)
%STRINGGENERATOR Summary of this function goes here
%   Detailed explanation goes here
max=max-min;
alfabeto=['A':'Z' 'a':'z' 'ч╟уср'];
palavra=[1:rand()*max+min]; %tamanho random de 3 a 17

for i=1:length(palavra)

    indice=randi([1,length(alfabeto)]);
    palavra(i)=alfabeto(indice);
end

palavra=char(palavra); %converte asci para letra
end

