
[Chessboard,CountZeros]=Default;
fl=0;
Boundwidth=2;
disp('Computer first and no negotiation!')
[Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,n,m]=Firstmove(Chessboard,CountZeros,Boundwidth);
[n,m]=AIthink(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
[Chessboard,CountZeros]=PlayRobot(n,m,Chessboard,CountZeros);
Leftboundary=min(Leftboundary,max(1,m-Boundwidth));
Rightboundary=max(Rightboundary,min(15,m+Boundwidth));
Upperboundary=min(Upperboundary,max(1,n-Boundwidth));
Lowerboundary=max(Lowerboundary,min(15,n+Boundwidth));

for ii=0:225 %±¾À´ÊÇ225
    [BlockTwo,r0,c0]=is_leap(n,m,Chessboard);
    if BlockTwo==1
        n=r0;
        m=c0;
    else
    [n,m]=AIthink1(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
    end
    [Chessboard,CountZeros]=PlayMan(n,m,Chessboard,CountZeros);
    Leftboundary=min(Leftboundary,max(1,m-Boundwidth));
    Rightboundary=max(Rightboundary,min(15,m+Boundwidth));
    Upperboundary=min(Upperboundary,max(1,n-Boundwidth));
    Lowerboundary=max(Lowerboundary,min(15,n+Boundwidth));
    
    End=EndGame(n,m,Chessboard);
    if (End)
        disp('Game over')
        break
    end
    
    [BlockTwo,r0,c0]=is_leap(n,m,Chessboard);
    if BlockTwo==1
        n=r0;
        m=c0;
    else
        [n,m]=AIthink(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
    end
    [Chessboard,CountZeros]=PlayRobot(n,m,Chessboard,CountZeros);
    Leftboundary=min(Leftboundary,max(1,m-Boundwidth));
    Rightboundary=max(Rightboundary,min(15,m+Boundwidth));
    Upperboundary=min(Upperboundary,max(1,n-Boundwidth));
    Lowerboundary=max(Lowerboundary,min(15,n+Boundwidth));
    
    End=EndGame(n,m,Chessboard);
    if (End)
        disp('Game over')
        break
    end
end
