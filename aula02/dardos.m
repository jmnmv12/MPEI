function [p1,p2]=dardos(n,m,N)
    lancamentos=ceil(m*rand(n,N));
    sucessos=0;
    
    for j=1:N
        if(length(unique(lancamentos(:,j)))~=n) % basta ter um numero igual que ja e sinal q pelo menos um alvo foi atingido 2 vezes
            sucessos=sucessos+1;
        end
    
    
    end
    
    p2=sucessos/N;% alvo ser atingido 2 vezes
    p1=1-p2;% alvo ser atingido 1 vez






end