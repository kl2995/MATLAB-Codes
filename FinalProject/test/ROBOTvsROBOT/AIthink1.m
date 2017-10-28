function [r,c]=AIthink1(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth)
[CumPayoff,CumVisitT,Rank]=DefaultForS(CountZeros);
CB=Chessboard;CZ=CountZeros;
a=Rightboundary-Leftboundary+1;
b=Lowerboundary-Upperboundary+1;
STime=a*b;
for ii=1:STime
     [Chessboard,CountZeros,rAI,cAI]=Expand1(Rank,CB,CZ,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
     [Win]=DefaultPolicy1(Chessboard,CountZeros,rAI,cAI,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
     [CumPayoff,CumVisitT,Rank]=BackPropagation1(rAI,cAI,Win,CumPayoff,CumVisitT,Rank);
end
[r,c]=Choice1(CumPayoff,CumVisitT,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
     