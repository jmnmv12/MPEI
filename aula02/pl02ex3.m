%M: mamograma positivo
%NM: mamograma n�o positivo
%C: cancro da mama
%NC: n�o ter cancro da mama
%PC: probabilidade de ter cancro da mama

%Valor te�rico 1/10000
PC=1/10000;
probTeorica=(0.9*PC)/(0.9*PC+0.1*(1-PC));
fprintf("\n-------------------\nAl�nea 3). Valor te�rico: ");
disp(probTeorica)

%Valor te�rico 1/1000
PC=1/1000;
probTeorica2=(0.9*PC)/(0.9*PC+0.1*(1-PC));
fprintf("\n-------------------\nAl�nea 3). Valor te�rico 2: ");
disp(probTeorica2)

%Valor simula��o 1/10000
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



fprintf("\n-------------------\nAl�nea 3). Valor simula��o : ");
disp(probTotal)

%Valor simula��o 1/1000
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
fprintf("\n-------------------\nAl�nea 3). Valor simula��o 2 : ");
disp(probTotal)