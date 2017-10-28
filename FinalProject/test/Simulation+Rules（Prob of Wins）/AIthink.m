function [r,c]=AIthink(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth)
[CumPayoff,CumVisitT,Rank]=DefaultForS(CountZeros);
CB=Chessboard;CZ=CountZeros;
a=Rightboundary-Leftboundary+1;
b=Lowerboundary-Upperboundary+1;
STime=100*a*b;
for ii=1:STime
    [Chessboard,CountZeros,rAI,cAI]=Expand(Rank,CB,CZ,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
    [Win]=DefaultPolicy(rAI,cAI,Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
    [CumPayoff,CumVisitT,Rank]=BackPropagation(rAI,cAI,Win,CumPayoff,CumVisitT,Rank);
end
[r,c]=Choice(CumPayoff,CumVisitT,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
     