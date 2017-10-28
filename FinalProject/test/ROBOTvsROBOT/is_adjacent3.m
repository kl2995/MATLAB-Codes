function [Block3,rT1,rT2,cT1,cT2]=is_adjacent3(r,c,Chessboard)
Block3=false;
N3=0;rT1=0;rT2=0;cT1=0;cT2=0;
for ii=0:min(min(4,15-r),min(4,15-c))
    if Chessboard(r+ii,c+ii)==Chessboard(r,c)
        N3=N3+1;
    else
        rT1=r+ii;cT1=c+ii;
        break
    end
end
for ii=0:min(min(r-1,c-1),min(r-1,4))
    if Chessboard(r-ii,c-ii)==Chessboard(r,c)
        N3=N3+1;
    else
         rT2=r-ii;cT2=c-ii;
         break
    end
end
N3=N3-1;
if N3 >= 3 
    Block3=true;
end