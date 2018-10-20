%% a)
espaco_amostragem1=1:100;
disp("O espaço de amosragem é "+mat2str(espaco_amostragem1)+ " e a probabilidades dos acontecimentos elemenatres é p=1/n, p=1/100");


%% b)
% valor da nota DIFERENTE de conjuntos possiveis
espaco_amostragem=[5,50,100];
prob_acontecimentos=[0.9,0.09,0.01];
disp("O espaço de amosragem é"+mat2str(espaco_amostragem)+"e a probabilidades dos acontecimentos elementares são p=cfav/cposs "+mat2str(prob_acontecimentos));

%% c)
stem(espaco_amostragem,prob_acontecimentos);
xlabel("X");
ylabel("Probabilidade(x)");
title("Probabilidade de massa");
axis([-0.2 101 -0.1 1.1]);