function OptValue=EuroPut1(S,K,T,u,d,q,R)
  A=zeros(T+1,1);
  for ii=0:T
        p=nchoosek(T,ii)*q^ii*(1-q)^(T-ii);
        Opt_P=max(0,K-S*u^ii*d^(T-ii));
        A(ii+1)=p*Opt_P;
  end
  Exp_Future=sum(A);
  OptValue=Exp_Future/R^T;
 return;
 
end
  