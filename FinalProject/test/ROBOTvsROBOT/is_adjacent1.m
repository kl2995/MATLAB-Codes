function [Block1,rT1,rT2,cT1,cT2]=is_adjacent1(r,c,Chessboard)
Block1=false;
N1=0;rT1=0;rT2=0;cT1=0;cT2=0;
for ii=0:min(4,15-c)
    if Chessboard(r,c+ii)==Chessboard(r,c)
        N1=N1+1;
    else
        rT1=r;cT1=c+ii;
        break
    end
end
for ii=0:min(c-1,4)
    if Chessboard(r,c-ii)==Chessboard(r,c)
        N1=N1+1;
    else
       rT2=r;cT2=c-ii; 
       break
    end
end
N1=N1-1;
if N1 >= 3 
    Block1=true;
end
return