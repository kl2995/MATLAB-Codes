function OptValue=EuroPut(S,K,T,u,d,q,R)
OptValue=0;
  if(T<0)
    disp('Error! T<0!')
    return;
  end
  if(T==0) %time to exercise
    OptValue=max(0, K-S);
  else
    OptValue=EuroPut(u*S,K,T-1,u,d,q,R)*q +EuroPut(d*S,K,T-1,u,d,q,R)*(1-q);
    OptValue=OptValue/R; %discount to NPV
end