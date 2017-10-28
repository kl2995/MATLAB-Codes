function [BlockTwo,r0,c0]=is_leap(r,c,Chessboard)
r0=0;c0=0;
BlockTwo=false;SituationTwo=zeros(1,4);rc=zeros(2,4);
[SituationTwo(1,1),rc(1,1),rc(2,1)]=is_leap1(r,c,Chessboard);
[SituationTwo(1,2),rc(1,2),rc(2,2)]=is_leap2(r,c,Chessboard);
[SituationTwo(1,3),rc(1,3),rc(2,3)]=is_leap3(r,c,Chessboard);
[SituationTwo(1,4),rc(1,4),rc(2,4)]=is_leap4(r,c,Chessboard);
for ii=1:4
    if SituationTwo(1,ii)>0
        BlockTwo=true;
        r0=rc(1,ii);
        c0=rc(2,ii);
    end
end
end