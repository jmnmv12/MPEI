%% a)
media=15;% 15 msg/seg
k=0;
[prob]=Poisson(media,k,1); %% Como neste caso ja nos dao a m�dia alpha=15, logo eu passso n=1 para alpha=15*1;
disp("Probailidade de n�o receber nenhuma mensagem num segundo: "+prob);


%% b)
repeticoes=10;
sum=0;

for n=0:repeticoes

    sum=sum+Poisson(media,n,1);
end

probfinal=1-sum;

disp("Probabilidade de receber mais de 10 mensagens num segundo: "+probfinal);