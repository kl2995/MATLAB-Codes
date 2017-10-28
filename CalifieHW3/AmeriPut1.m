function OptValue=AmeriPut1(S,K,T,u,d,q,R)
Stk_PT=zeros(1,T+1);
OptValue=zeros(1,T+1);
for jj=1:T+1
    Stk_PT(jj)=S*u^(jj-1)*d^(T-jj+1);
    OptValue(jj)=max(0,K-Stk_PT(jj));
end
for ii=T-1:-1:0    
    Stk_P=zeros(1,ii+1);
    Opt_P1=OptValue;
    Opt_N=zeros(1,ii+1);
    Opt_W=zeros(1,ii+1);
    OptValue=zeros(1,ii+1);
    for k=1:ii+1
        Stk_P(k)=S*u^(k-1)*d^(ii-k+1);
        Opt_N(k)=max(0,K-Stk_P(k));
        Opt_W(k)=[Opt_P1(k)*(1-q)+Opt_P1(k+1)*q]/R;
        OptValue(k)=max(Opt_N(k),Opt_W(k));
    end
end


        
        
        
       
        