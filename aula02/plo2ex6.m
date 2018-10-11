    %% a)
 n=2;
 N=1e3;
 prob=0;
 
 
 while (prob<0.5)
     n=n+1;
     
    [p1, prob]=dardos(n,365,N);
     
     
 end
  
 
 disp(n)
 
    %% b)
 n=2;
 N=1e3;
 prob=0;
 
 
 while (prob<0.9)
     n=n+1;
     
    [p1, prob]=dardos(n,365,N);
     
     
 end
  
 
 disp(n)
 
 
 
