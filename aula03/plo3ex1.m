%% a)

x=1:6;
px=ones(1,6)*(1/6);
subplot(2,1,1)
stem(x,px);
xlabel("X");
ylabel("Probabilidade(x)");
title("Probabilidade de X");
axis([0 6.5 0 (1/6)*1.2]);

%% b)
% Distribuição acumulada
x2=-1:8;
px2=cumsum(px);
px2_final=[0,0,px2,0,0];
subplot(2,1,2);
stairs(x2,px2_final);
axis([-1 9 -0.2 1.2]);
xlabel("X");
ylabel("Probabilidade ");
title("Probabilidade acumulada");