%% Codigo a)
N=1e7;

probsimu=calcp(0.5,10,10,N);
fprintf("\n-------------------\nAlínea 2a). Valor por simulação: ");
disp(probsimu)

probteorico=teorico(0.5,10,10);
fprintf("\n-------------------\nAlínea 2a). Valor por teorico: ");
disp(probteorico)
     
%% Codigo b)
N=1e7;

probsimu=calcp(0.5,10,10,N);
casosfavor=calcp(0.5,11,11,N);
probTotal=casosfavor/probsimu;
fprintf("\n-------------------\nAlínea 2b). Valor por simulação: ");
disp(probTotal)

% probteorico=teorico(0.5,10,10);
% fprintf("\n-------------------\nAlínea 2b). Valor por teorico: ");
% disp(probsimu)
%      