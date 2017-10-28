function [Chessboard,CountZeros,rAI,cAI]=Expand(Rank,Chessboard,CountZeros)
[rAI,cAI]=SuperMax(Rank);
Chessboard(rAI,cAI)=1;
CountZeros(rAI,cAI)=0;
return


