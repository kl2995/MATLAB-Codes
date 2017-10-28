function [r,c]=AIthink(Chessboard,CountZeros)
[CumPayoff,CumVisitT,Rank]=DefaultForS(CountZeros);
CB=Chessboard;CZ=CountZeros;
for ii=1:10000
     [Chessboard,CountZeros,rAI,cAI]=Expand(Rank,CB,CZ);
     [Win]=DefaultPolicy(Chessboard,CountZeros);
     [CumPayoff,CumVisitT,Rank]=BackPropagation(rAI,cAI,Win,CumPayoff,CumVisitT,Rank);
end
[r,c]=Choice(CumPayoff,CumVisitT);
     