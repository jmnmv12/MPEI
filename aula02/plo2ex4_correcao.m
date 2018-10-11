%C)
%% Valor simulação m=1000
clear all
N=1e4;
m=1000;
nValues=1:10;


ms=[1e3 1e4 1e5 1e6];
ns=1:10:100;


for g=1:4
    subplot(2,2,g)
    prob=zeros(1,10);
    
    for i=1:length(ns)
        [p1, prob(i)]=dardos(ns(i),ms(g),N);
    end
    
    plot(ns(1:i),prob(1:i),'r.')
    xlabel("N");
    ylabel("prob(N)")
    title=(['m= ' ms(g)] );
end


