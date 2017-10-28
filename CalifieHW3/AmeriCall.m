function OptValue=AmeriCall(S,K,T,u,d,q,R)
OptValue=0;
if(T<0)
   disp('Error! T<0!')
   return;
end
if(T==0) %time to exercise
    OptValue=max(0,S-K);
else
    UP=AmeriCall(u*S,K,T-1,u,d,q,R);
    DN=AmeriCall(d*S,K,T-1,u,d,q,R);
    Wait=(UP*q+DN*(1-q))/R;
    Ex_Now=max(S-K,0);
    OptValue=max(Ex_Now,Wait);
end