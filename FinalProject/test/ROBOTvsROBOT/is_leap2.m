function [SituationTwo,r0,c0]=is_leap2(r,c,Chessboard)
SituationTwo=0;
r0=0;c0=0;
for ii=1:5
    num=0;
    num1=0;
    for jj=1:5
        if (r+ii+jj-5<12)&&(r+ii+jj-6>0)
            if(Chessboard(r+ii+jj-6,c)==Chessboard(r,c))
                num=num+1;
            end
            if (Chessboard(r+ii+jj-6,c)==0)
                num1=1;
            end
        else
            break;       
        end
    end
    if (num==4) && (num1==1)
        SituationTwo=1;
        for jj=1:5
            if Chessboard(r+ii+jj-6,c)==0;
                r0=r+ii+jj-6;
                c0=c;
            end
        end
    end
    if (num==3) && (num1==2)
        if(Chessboard(r+ii-5,c)==0)&&(Chessboard(r+ii-1,c)==0)
            SituationTwo=1;
            r0=r+ii-1;
            c0=c;
        end
    end
end
end