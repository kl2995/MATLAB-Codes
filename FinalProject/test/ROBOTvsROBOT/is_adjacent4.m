function [Block4,rT1,rT2,cT1,cT2]=is_adjacent4(r,c,Chessboard)
Block4=false;
N4=0;rT1=0;rT2=0;cT1=0;cT2=0;
for ii=0:min(min(4,15-r),min(4,c-1))
    if Chessboard(r+ii,c-ii)==Chessboard(r,c)
        N4=N4+1;
    else
        rT1=r+ii;cT1=c-ii;
        break
    end
end
for ii=0:min(min(r-1,4),min(4,15-c))
    if Chessboard(r-ii,c+ii)==Chessboard(r,c)
        N4=N4+1;
    else
        rT2=r-ii;cT2=c+ii;
        break
    end
end
N4=N4-1;
if N4 >= 3 
    Block4=true;
end