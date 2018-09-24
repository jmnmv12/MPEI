N=1e6;
n=20;
p=0.5;

prob=zeros(1,n+1);%recomendado

for k=0:n
   
    prob(k+1)=calcp(p,k,n,N);
    fprintf(1,'P(%d sucessos em %d lancamentos)=%.4f\n',k,n,prob(k+1))
    
end

stem(0:n,prob)
n=30;
for k=0:n
   
    prob(k+1)=calcp(p,k,n,N);
    fprintf(1,'P(%d sucessos em %d lancamentos)=%.4f\n',k,n,prob(k+1))
    
end

n=40;

for k=0:n
   
    prob(k+1)=calcp(p,k,n,N);
    fprintf(1,'P(%d sucessos em %d lancamentos)=%.4f\n',k,n,prob(k+1))
    
end