function [Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,n,m]=Firstmove(Chessboard,CountZeros,Boundwidth)
n=6+randi(3);
m=6+randi(3);
[Chessboard,CountZeros]=PlayRobot(n,m,Chessboard,CountZeros);

for ii=1:5
    n=input('Which x-coodinate you want to address?');
    m=input('Which y-coodinate you want to address?');
    
    if isempty(n)|| isempty(m)
        disp('Wrong message!')
        continue;
    elseif(m<=15)&&(m>=1)&&(n<=15)&&(n>=1)
        fl=is_legal2(n,m,CountZeros);
        if fl==0
            continue;
        end
        break;
    else
        disp('Wrong message!')
        continue;
    end
    
    
end
[Chessboard,CountZeros]=PlayMan(n,m,Chessboard,CountZeros);
Leftboundary=max(1,m-Boundwidth);
Rightboundary=min(15,m+Boundwidth);
Upperboundary=max(1,n-Boundwidth);
Lowerboundary=min(15,n+Boundwidth);


