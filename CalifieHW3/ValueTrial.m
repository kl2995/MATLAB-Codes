for ii=1:10
    S=floor(20*rand()+40);
    K=floor(10*rand()+45);
    T=floor(9*rand()+1);
    u=0.2*rand()+1.2;
    d=1/u;
    q=0.1*rand()+0.5;
    R=1+0.1*rand()+0.1;
    Condition=[S K T u d q R]
    ECP=EuroCall(S,K,T,u,d,q,R)
    ACP=AmeriCall(S,K,T,u,d,q,R)
    if ECP > ACP
         disp('European Call Option is more valuable!')
    else
         disp('American Call Option is more valuable!')
    end
end