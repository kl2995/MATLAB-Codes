function [Chessboard,CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary,n,m]=Firstmove(Chessboard,CountZeros,Boundwidth)
n=6+randi(3);
m=6+randi(3);
[Chessboard,CountZeros]=PlayRobot(n+1,m+1,Chessboard,CountZeros);
[Chessboard,CountZeros]=PlayMan(n,m,Chessboard,CountZeros);
Leftboundary=max(1,m-Boundwidth);
Rightboundary=min(15,m+Boundwidth);
Upperboundary=max(1,n-Boundwidth);
Lowerboundary=min(15,n+Boundwidth);


