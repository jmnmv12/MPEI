%% a)
N=1e4;
m=1000;
n=10;
[p1, prob]=dardos(n,m,N);
disp(prob)

%% b)
clear all
N=1e4;
m=1000;
keys=1:10;
prob=zeros(1,length(keys));

for j=1:length(keys)
    
    [p1, prob(j)]=dardos(j,m,N);
    
end

plot(keys(1:10),prob(1,:))