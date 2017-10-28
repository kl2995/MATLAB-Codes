function [Win,i]=DefaultPolicy(rAI,cAI,Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth)
if nargin==4
    Leftboundary=1;Rightboundary=15;Upperboundary=1;Lowerboundary=15;Boundwidth=0;
end
End=EndGame(rAI,cAI,Chessboard,CountZeros);
move=1;i=0;
while (~End) && sum(sum(CountZeros))>0
    if move==1
        [r,c]=Simulation(CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
        Chessboard(r,c)=2;CountZeros(r,c)=0;
        End=EndGame(r,c,Chessboard,CountZeros);
        move=move*(-1);
        Leftboundary=min(Leftboundary,max(1,c-Boundwidth));
        Rightboundary=max(Rightboundary,min(15,c+Boundwidth));
        Upperboundary=min(Upperboundary,max(1,r-Boundwidth));
        Lowerboundary=max(Lowerboundary,min(15,r+Boundwidth));
    elseif move==-1
        [r,c]=Simulation(CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
        Chessboard(r,c)=1;CountZeros(r,c)=0;
        End=EndGame(r,c,Chessboard,CountZeros);
        move=move*(-1);
        Leftboundary=min(Leftboundary,max(1,c-Boundwidth));
        Rightboundary=max(Rightboundary,min(15,c+Boundwidth));
        Upperboundary=min(Upperboundary,max(1,r-Boundwidth));
        Lowerboundary=max(Lowerboundary,min(15,r+Boundwidth));
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
