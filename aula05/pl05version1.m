%% Exercicio 1.3
clear all

fator_de_carga=0.8
size=1000/fator_de_carga;
array=zeros(1,size);

for i=1:1000
    word=StringGenerator(3,20);
    indice=hf(string2hash(word,'djb2'),size);
    array(indice)=array(indice)+1;
    
end
figure(1)
subplot(1,2,1)
hist(array(:),0:max(array));
[n,x]=hist(array(:),0:max(array));
subplot(1,2,2)
stem(array)


%% Exercicio 1.4

% X=numero de elementos que estao numa certa posiçao (0,1,2,3,4,5)
figure(2)
pX=n/1250; %apesar de gerarmos 1000 palavras o nosso array tem 1250 espaços logo dividimos por 1250
%Se tirassemos o 0 o n/1000 já faria sentido porque se for 0 nao houve
%nenhuma string mapeada naquela posiçao
stem(x,pX);
axis([-1 max(array)+1 0 1])
valor_esperado=x*pX';
disp("Valor esperado: "+valor_esperado)
variancia=(x.^2*pX')-valor_esperado^2;
disp("Variancia: "+variancia)
