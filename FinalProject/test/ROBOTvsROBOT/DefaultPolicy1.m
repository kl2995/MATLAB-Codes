function [Win]=DefaultPolicy1(Chessboard,CountZeros,rAI,cAI,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth)
if nargin==2
    Leftboundary=1;Rightboundary=15;Upperboundary=1;Lowerboundary=15;
end
Win1=zeros(1,100);
for ii=1:100
    move=1;
    End=EndGame(rAI,cAI,Chessboard);
    Chessboard1=Chessboard;
    CountZeros1=CountZeros;
while (~End) && sum(sum(CountZeros1))>0
    if move==1
        [r,c]=Simulation(CountZeros1,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
        Chessboard1(r,c)=2;CountZeros1(r,c)=0;
        End=EndGame(r,c,Chessboard1);
        move=move*(-1);
        Leftboundary=min(Leftboundary,max(1,c-Boundwidth));
        Rightboundary=max(Rightboundary,min(15,c+Boundwidth));
        Upperboundary=min(Upperboundary,max(1,r-Boundwidth));
        Lowerboundary=max(Lowerboundary,min(15,r+Boundwidth));
    elseif move==-1
        [r,c]=Simulation(CountZeros1,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
        Chessboard1(r,c)=1;CountZeros1(r,c)=0;
        End=EndGame(r,c,Chessboard1);
        move=move*(-1);
        Leftboundary=min(Leftboundary,max(1,c-Boundwidth));
        Rightboundary=max(Rightboundary,min(15,c+Boundwidth));
        Upperboundary=min(Upperboundary,max(1,r-Boundwidth));
        Lowerboundary=max(Lowerboundary,min(15,r+Boundwidth));
    end
end
if (End) && move==1
    Win1(1,ii)=1;
elseif (End) && move==-1
    Win1(1,ii)=-1;
end
end
Win=sum(Win1);
return
