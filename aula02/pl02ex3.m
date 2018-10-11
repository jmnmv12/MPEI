%M: mamograma positivo
%NM: mamograma não positivo
%C: cancro da mama
%NC: não ter cancro da mama
%PC: probabilidade de ter cancro da mama

%Valor teórico 1/10000
PC=1/10000;
probTeorica=(0.9*PC)/(0.9*PC+0.1*(1-PC));
fprintf("\n-------------------\nAlínea 3). Valor teórico: ");
disp(probTeorica)

%Valor teórico 1/1000
PC=1/1000;
probTeorica2=(0.9*PC)/(0.9*PC+0.1*(1-PC));
fprintf("\n-------------------\nAlínea 3). Valor teórico 2: ");
disp(probTeorica2)

%Valor simulação 1/10000
N=1e7;
PC=1/10000;

C=rand(1,N)<PC;
M=zeros(1,N);

for i=1:N
    if C(i)==1
        M(i)=rand()<0.9;
    else
        M(i)=rand()<0.1;
    end
   
end

probTotal=sum(C & M)/sum(M);



fprintf("\n-------------------\nAlínea 3). Valor simulação : ");
disp(probTotal)

%Valor simulação 1/1000
N=1e7;
PC=1/1000;

C=rand(1,N)<PC;
M=zeros(1,N);

for i=1:N
    if C(i)==1
        M(i)=rand()<0.9;
    else
        M(i)=rand()<0.1;
    end
   
end

probTotal=sum(C & M)/sum(M);
fprintf("\n-------------------\nAlínea 3). Valor simulação 2 : ");
disp(probTotal)