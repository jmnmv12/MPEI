% teste da fun�ao fmp

xi=[1,2,3,4,5,6];
pX=[0.1,0.1,0.1,0.1,0.1,0.5];
N=100;
dist=pmf(xi,pX,N)
hist(dist,1:6)