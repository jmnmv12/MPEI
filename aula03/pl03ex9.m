lambda=1;
k=0;

prob=Poisson(lambda,0,1); %prob de 0 erros

probfinal=1-prob; %prob de pelo menos 1 erro e igual a 1-prob de 0 erros;

disp("Probabilidade de pelo menos 1 erro numa pagina: "+probfinal)
