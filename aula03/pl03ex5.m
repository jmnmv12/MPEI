% Sendo p a probabilidade de os motores de um avião falharem
% A probabilidade de o aviao 2 se despenhar é p^2 e a probabilidade de
% aviao 4 se despenhar é 4p^3-3p^4 

p2=zeros(1,21);
p4=zeros(1,21);
i=0;
x=0:0.05:1;
for n=x

    p2(i+1)=n^2;
    p4(i+1)=4*n^3-3*n^4;
    i=i+1;
    
end
plot(x,p2)
hold on
plot(x,p4)
hold off
legend('p2','p4')

%Analisando o plot podemos concluir que acima de p=0.34 e mais provavel o
%aviao de 4 motores se despenhar que o de 2 motores