%% a)
a=7^5;
c=137;
m=2^31-1;
N=100000;
y=lcg(100,a,c,m,N);

hist(y);
tamanho=length(unique(y));
disp(tamanho+" números diferentes.")

%% b)
y1=y/m; % obtemos numeros de 0 a 1
subplot(2,1,1)
hist(y1,200),title("lgc()")
subplot(2,1,2)
hist(rand(1,N),200),title("rand()")

%% c)
a1=13^13;
m1=2^59;
c1=137;

y3=lcg(100,a1,c1,m1,N);
figure(2)
hist(y3)

tamanho=length(unique(y));
disp(tamanho+" números diferentes.")