%% a) e b)

tamanho=1000;
N=1e3;
keys=1:10;


prob_total=zeros(1,length(keys));

cf=0;
for j=1:length(keys)
    experiencias=floor(rand(length(keys),N)*1000);
       for k=1:N

            if length(unique(experiencias(:,k)))<j
                cf=cf+1;
                
                
            end
       end
        prob_total(j)=cf/N;
end    


prob=cf/N;
disp(prob_total)
figure;
plot(keys,prob_total)


%% c)

tamanho=1000;
N=1e3;
keys=50;

sucessos=zeros(1,tamanho);

cf=0;
for j=100:tamanho
    experiencias=floor(rand(keys,N)*j);
       for k=1:N

            if (length(unique(experiencias(:,k)))==keys)
                sucessos(j)=sucessos(j)+1;
                
                
            end
       end
      
end    

prob_total=sucessos/N;
disp(prob_total);
figure;
plot(prob_total)% por defeito o eixo dos x toma o valor dos indices da matriz