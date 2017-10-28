
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
ii=0;
while (ii<112)
    n=input('Which x-coodinate you want to address?','s');
    m=input('Which y-coodinate you want to address?','s');
    n = str2double(n);
    m = str2double(m);
    if (isnan(m)==1)||(isnan(n)==1)||((m>=15)||(m<=1)||(n>=15)||(n<=1))
        disp('Wrong message!')
        continue;
    end
    
    fl=is_legal2(n,m,CountZeros);
    if fl==0
        disp('This position had been occupied!')
        continue;
    end
    
    [Chessboard,CountZeros]=PlayMan(n,m,Chessboard,CountZeros);
    Leftboundary=min(Leftboundary,max(1,m-Boundwidth));
    Rightboundary=max(Rightboundary,min(15,m+Boundwidth));
    Upperboundary=min(Upperboundary,max(1,n-Boundwidth));
    Lowerboundary=max(Lowerboundary,min(15,n+Boundwidth));
    
    End=EndGame(n,m,Chessboard,CountZeros);
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
    
    End=EndGame(n,m,Chessboard,CountZeros);
    if (End)
        disp('Game over')
        break
    end
    ii=ii+1;
end
if sum(sum(CountZeros))==0
    disp('No more vacancies on Chessboard!')
end