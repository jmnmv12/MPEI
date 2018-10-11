%% e) e f)
N=1e3;

prob_total=zeros(1,10);
length(prob_total)

for n=11:20
    experiencias=ceil(n*rand(5,N));
    inclui2=0;
    inclui_1e2=0;
    for i=1:N
       vetor_linha=experiencias(:,i);

            if(ismember(2,vetor_linha))
                inclui2=inclui2+1;
            end
            if(ismember([2,1],vetor_linha))
                inclui_1e2=inclui_1e2+1;
            end

    end
    
    prob_2=inclui2/N;
    prob_1e2=inclui_1e2/N;
    prob_total(n-10)=prob_1e2/prob_2;
end

plot(11:20,prob_total)
hold on
%% d)
N=1e3;

prob_total=zeros(1,10);
length(prob_total)

for n=11:20
    experiencias=ceil(n*rand(5,N));
    inclui2=0;
    inclui_1e2=0;
    for i=1:N
       vetor_linha=experiencias(:,i);
        if(length(unique(vetor_linha))==5)
                if(ismember(2,vetor_linha))
                    inclui2=inclui2+1;
                end
                if(ismember([2,1],vetor_linha))
                    inclui_1e2=inclui_1e2+1;
                end
        end

    end
    
    prob_2=inclui2/N;
    prob_1e2=inclui_1e2/N;
    prob_total(n-10)=prob_1e2/prob_2;
end

plot(11:20,prob_total)
hold off