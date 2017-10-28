function [Block,Situation]=is_adjacent(r,c,Chessboard)
Block=false;Situation=zeros(1,4);
for ii=0:min(3,15-c)
    if Chessboard(r,c+ii)==Chessboard(r,c)
        Situation(1,1)=Situation(1,1)+1;
    else break
    end
end
for ii=0:min(c-1,3)
    if Chessboard(r,c-ii)==Chessboard(r,c)
        Situation(1,1)=Situation(1,1)+1;
    else break
    end
end
Situation(1,1)=Situation(1,1)-1;

for ii=0:min(3,15-r)
    if Chessboard(r+ii,c)==Chessboard(r,c)
        Situation(1,2)=Situation(1,2)+1;
    else break
    end
end
for ii=0:min(r-1,3)
    if Chessboard(r-ii,c)==Chessboard(r,c)
        Situation(1,2)=Situation(1,2)+1;
    else break
    end
end
Situation(1,2)=Situation(1,2)-1;

for ii=0:min(min(3,15-r),min(3,15-c))
    if Chessboard(r+ii,c+ii)==Chessboard(r,c)
        Situation(1,3)=Situation(1,3)+1;
    else break
    end
end
for ii=0:min(min(r-1,c-1),min(r-1,3))
    if Chessboard(r-ii,c-ii)==Chessboard(r,c)
        Situation(1,3)=Situation(1,3)+1;
    else break
    end
end
Situation(1,3)=Situation(1,3)-1;

for ii=0:min(min(3,15-r),min(3,c-1))
    if Chessboard(r+ii,c-ii)==Chessboard(r,c)
        Situation(1,4)=Situation(1,4)+1;
    else break
    end
end
for ii=0:min(min(r-1,3),min(3,15-c))
    if Chessboard(r-ii,c+ii)==Chessboard(r,c)
        Situation(1,4)=Situation(1,4)+1;
    else break
    end
end
 Situation(1,4)=Situation(1,4)-1;
 
if Situation(1,1) >= 3 || Situation(1,2) >= 3 || Situation(1,3) >= 3 || Situation(1,4) >= 3
    Block=true;
end
for ii=1:4
    if Situation(1,ii)<3
        Situation(1,ii)=0;
    end
end
return