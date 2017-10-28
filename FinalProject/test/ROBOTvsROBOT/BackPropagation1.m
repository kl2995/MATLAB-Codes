function [CumPayoff,CumVisitT,Rank]=BackPropagation1(rAI,cAI,Win,CumPayoff,CumVisitT,Rank)
CumPayoff(rAI,cAI)=CumPayoff(rAI,cAI)+Win;
CumVisitT(rAI,cAI)=CumVisitT(rAI,cAI)+1;
Rank(rAI,cAI)=CumPayoff(rAI,cAI)./CumVisitT(rAI,cAI)+2*sqrt(2)*sqrt(2*log(50)./CumVisitT(rAI,cAI));
return
   