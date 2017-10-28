function [Block2,rT1,rT2,cT1,cT2]=is_adjacent2(r,c,Chessboard)
Block2=false;
N2=0;rT1=0;rT2=0;cT1=0;cT2=0;
for ii=0:min(4,15-r)
    if Chessboard(r+ii,c)==Chessboard(r,c)
        N2=N2+1;
    else
        rT1=r+ii;cT1=c;
        break
    end
end
for ii=0:min(r-1,4)
    if Chessboard(r-ii,c)==Chessboard(r,c)
        N2=N2+1;
    else
        rT2=r-ii;cT2=c;
        break
    end
end
N2=N2-1;
if N2 >= 3 
    Block2=true;
end