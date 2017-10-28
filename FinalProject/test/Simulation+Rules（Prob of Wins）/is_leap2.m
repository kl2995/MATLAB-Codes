function [SituationTwo,r0,c0]=is_leap2(r,c,Chessboard)
SituationTwo=0;
r0=0;c0=0;
for ii=1:5
    num=0;
    num1=0;
    count=zeros(1,5);
    k=1;
    for jj=1:5
        if (r+ii+jj-5<12)&&(r+ii+jj-6>0)
            if(Chessboard(r+ii+jj-6,c)==Chessboard(r,c))
                num=num+1;
            end
            if (Chessboard(r+ii+jj-6,c)==0)
                num1=num1+1;
                count(1,k)=r+ii+jj-6;
                k=k+1;
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
        if((count(1,2)-count(1,1))==4) || ((count(1,2)-count(1,1))==3) || (((count(1,2)-count(1,1))==2)&& (Chessboard(r+ii+jj-6,c)~=Chessboard(r+ii+jj-2,c)))
            SituationTwo=1;
            for jj=1:5
                if Chessboard(r+ii+jj-6,c)==0;
                    r0=r+ii+jj-6;
                    c0=c;
                end
            end
        end
    end
end
end