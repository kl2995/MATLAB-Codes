
[Chessboard,CountZeros]=Default;
fl=0;
Boundwidth=2;
[Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,n,m]=Firstmove(Chessboard,CountZeros,Boundwidth);
[Block,Situation]=is_adjacent(n,m,Chessboard);
if (Block)
    [rt,ct]=Defend(n,m,Chessboard,CountZeros,Situation);
    if (~isempty(rt)) && (~isempty(ct))
        n=rt;m=ct;
    else
        [n,m]=AIthink(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
    end
else
    [n,m]=AIthink(Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,Boundwidth);
end
[Chessboard,CountZeros]=PlayRobot(n,m,Chessboard,CountZeros);
Leftboundary=min(Leftboundary,max(1,m-Boundwidth));
Rightboundary=max(Rightboundary,min(15,m+Boundwidth));
Upperboundary=min(Upperboundary,max(1,n-Boundwidth));
Lowerboundary=max(Lowerboundary,min(15,n+Boundwidth));

for ii=0:150 %±¾À´ÊÇ225
    
    n=input('Which row you want to address?');
    m=input('Which colum you want to address?');
    if isempty(n)|| isempty(m)
        disp('Wrong message!')
        continue
    else if(m<=15)&&(m>=1)&&(n<=15)&&(n>=1)
        else
            disp('Wrong message!')
            continue;
        end
    end
    fl=is_legal2(n,m,CountZeros);
    if fl==0
        continue;
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
