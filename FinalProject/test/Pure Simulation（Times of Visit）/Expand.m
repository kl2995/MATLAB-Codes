function [Chessboard,CountZeros,rAI,cAI]=Expand(Rank,Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary)
[rAI,cAI]=SuperMax(Rank,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
Chessboard(rAI,cAI)=1;
CountZeros(rAI,cAI)=0;
return


