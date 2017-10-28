function [Win,i]=DefaultPolicy(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary)
if nargin==2
    Leftboundary=1;Rightboundary=15;Upperboundary=1;Lowerboundary=15;
end
End=false;
move=1;i=0;
while (~End) && sum(sum(CountZeros))>0
    if move==1
[r,c]=Simulation(CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
Chessboard(r,c)=2;CountZeros(r,c)=0;
End=EndGame(r,c,Chessboard);
move=move*(-1);
    elseif move==-1
[r,c]=Simulation(CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
Chessboard(r,c)=1;CountZeros(r,c)=0;
End=EndGame(r,c,Chessboard);
move=move*(-1);
    end
    i=i+1;
end
if (End) && move==1
    Win=1;
elseif (End) && move==-1
    Win=0;
else
    Win=-1;
end
return
    