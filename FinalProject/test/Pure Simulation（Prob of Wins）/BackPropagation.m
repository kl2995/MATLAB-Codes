function [CumPayoff,CumVisitT,Rank]=BackPropagation(rAI,cAI,Win,CumPayoff,CumVisitT,Rank)
if Win==1
    CumPayoff(rAI,cAI)=CumPayoff(rAI,cAI)+1;
elseif Win==0
    CumPayoff(rAI,cAI)=CumPayoff(rAI,cAI)-1;
end
CumVisitT(rAI,cAI)=CumVisitT(rAI,cAI)+1;
Rank(rAI,cAI)=CumPayoff(rAI,cAI)./CumVisitT(rAI,cAI)+2*sqrt(1/2)*sqrt(2*log(50)./CumVisitT(rAI,cAI));
return
   