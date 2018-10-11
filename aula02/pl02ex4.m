%a)
%% Valor teórico
%Muito provavelmente mal
n=20;
probtotal= (100-n+1)/100;
disp(probtotal)

%% Valor simulação

N=1e5;
lancamentos=ceil(100*rand(20,N));
sucessos=0;

for j=1:N
   if(length(unique(lancamentos(:,j)))==20)
       sucessos=sucessos+1;
   end
    
    
end

probtotal1=sucessos/N;
disp(probtotal1)


%b)
%% Valor simulação

N=1e5;
lancamentos=ceil(100*rand(20,N));
sucessos=0;

for j=1:N
   if(length(unique(lancamentos(:,j)))~=20) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
       sucessos=sucessos+1;
   end
    
    
end

probtotal1=sucessos/N;
disp(probtotal1)


%ou simplesmente fazemos Prob=1- prob alinea a)

%c)



%% Valor simulação m=1000

N=1e5;
m=1000;
nValues=1:10;
prob=zeros(1,10);
i=1;



for n=1:length(nValues)
    lancamentos=ceil(m*rand(n,N));
    sucessos=0;
    
    for j=1:N
        if(length(unique(lancamentos(:,j)))~=n) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
            sucessos=sucessos+1;
        end
    
    
    end
    
    prob(i)=sucessos/N;
    n=n+1;
    i=i+1;
end

figure
subplot(2,2,1)
plot(nValues, prob)
xlabel('n')
ylabel('P(n)')
title('Probabilidades para m = 1000')


%% Valor simulação m=10000

N=1e5;
m=10000;
nValues=1:10;
prob=zeros(1,10);
i=1;



for n=1:length(nValues)
    lancamentos=ceil(m*rand(n,N));
    sucessos=0;
    
    for j=1:N
        if(length(unique(lancamentos(:,j)))~=n) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
            sucessos=sucessos+1;
        end
    
    
    end
    
    prob(i)=sucessos/N;
    n=n+1;
    i=i+1;
end

figure
subplot(2,2,2)
plot(nValues, prob)
xlabel('n')
ylabel('P(n)')
title('Probabilidades para m = 10000')

%% Valor simulação m=100000

N=1e5;
m=100000;
nValues=1:10;
prob=zeros(1,10);
i=1;



for n=1:length(nValues)
    lancamentos=ceil(m*rand(n,N));
    sucessos=0;
    
    for j=1:N
        if(length(unique(lancamentos(:,j)))~=n) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
            sucessos=sucessos+1;
        end
    
    
    end
    
    prob(i)=sucessos/N;
    n=n+1;
    i=i+1;
end

figure
subplot(2,2,3)
plot(nValues, prob)
xlabel('n')
ylabel('P(n)')
title('Probabilidades para m = 100000')



%% Valor simulação m=1000000

N=1e5;
m=1000000;
nValues=1:10;
prob=zeros(1,10);
i=1;



for n=1:length(nValues)
    lancamentos=ceil(m*rand(n,N));
    sucessos=0;
    
    for j=1:N
        if(length(unique(lancamentos(:,j)))~=n) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
            sucessos=sucessos+1;
        end
    
    
    end
    
    prob(i)=sucessos/N;
    n=n+1;
    i=i+1;
end

figure
subplot(2,2,4)
plot(nValues, prob)
xlabel('n')
ylabel('P(n)')
title('Probabilidades para m = 1000000')


% ATENÇÃO NÃO ESTÁ OPTIMIZADO

%d)
%% Valor simulação m=1000

N=1e5;
m=100;
n=100;
prob=zeros(1,10);
i=1;



while(m<10000)
    lancamentos=ceil(m*rand(n,N));
    sucessos=0;
    
    for j=1:N
        if(length(unique(lancamentos(:,j)))~=n) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
            sucessos=sucessos+1;
        end
    
    
    end
    
    prob(i)=sucessos/N;
    n=n+1;
    i=i+1;
end
figure
plot(nValues, prob)
xlabel('n')
ylabel('P(n)')
title('Probabilidades para m = 1000 e n=100')

