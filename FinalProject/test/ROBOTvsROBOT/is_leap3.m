function [SituationTwo,r0,c0]=is_leap3(r,c,Chessboard)
SituationTwo=0;r0=0;c0=0;
for ii=1:5
    num=0;
    num1=0;
    for jj=1:5
        if (r+ii+jj-6<12)&&(r+ii+jj-6>0)&&(c+ii+jj-5<12)&&(c+ii+jj-6>0)
            if(Chessboard(r+ii+jj-6,c+ii+jj-6)==Chessboard(r,c))
                num=num+1;
            end
            if Chessboard(r+ii+jj-6,c+ii+jj-6)==0
                num1=1;
            end
        else
            break;       
        end
    end
    if (num==4) && (num1==1)
        SituationTwo=1;
        for jj=1:5
            if Chessboard(r+ii+jj-6,c+ii+jj-6)==0;
                r0=r+ii+jj-6;
                c0=c+ii+jj-6;
            end
        end
    end
    if (num==3) && (num1==2)
        if(Chessboard(r+ii-5,c+ii-5)==0)&&(Chessboard(r+ii-1,c+ii-1)==0)
            SituationTwo=1;
            r0=r+ii-1;
            c0=c+ii-1;
        end
    end
end
end