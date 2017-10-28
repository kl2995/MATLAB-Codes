function [End]=EndGame(r,c,Chessboard,CountZeros)
End=false;
N1=0;N2=0;N3=0;N4=0;
if sum(sum(CountZeros))==0
    End=true;
else
    for ii=0:min(4,15-c)
        if Chessboard(r,c+ii)==Chessboard(r,c)
            N1=N1+1;
        else break
        end
    end
    for ii=0:min(c-1,4)
        if Chessboard(r,c-ii)==Chessboard(r,c)
            N1=N1+1;
        else break
        end
    end
    N1=N1-1;
    for ii=0:min(4,15-r)
        if Chessboard(r+ii,c)==Chessboard(r,c)
            N2=N2+1;
        else break
        end
    end
    for ii=0:min(r-1,4)
        if Chessboard(r-ii,c)==Chessboard(r,c)
            N2=N2+1;
        else break
        end
    end
    N2=N2-1;
    for ii=0:min(min(4,15-r),min(4,15-c))
        if Chessboard(r+ii,c+ii)==Chessboard(r,c)
            N3=N3+1;
        else break
        end
    end
    for ii=0:min(min(r-1,c-1),min(r-1,4))
        if Chessboard(r-ii,c-ii)==Chessboard(r,c)
            N3=N3+1;
        else break
        end
    end
    N3=N3-1;
    for ii=0:min(min(4,15-r),min(4,c-1))
        if Chessboard(r+ii,c-ii)==Chessboard(r,c)
            N4=N4+1;
        else break
        end
    end
    for ii=0:min(min(r-1,4),min(4,15-c))
        if Chessboard(r-ii,c+ii)==Chessboard(r,c)
            N4=N4+1;
        else break
        end
    end
    N4=N4-1;
    if N1 >= 5 || N2 >= 5 || N3 >= 5 || N4 >= 5
        End=true;
    end
end
return