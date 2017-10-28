
[Chessboard,CountZeros]=Default;
fl=0;
move=-1;
End=0;
disp('Computer first and no negotiation!')
for ii=0:300 %±¾À´ÊÇ225
    if move==1
        n=input('Which row you want to address?');
        m=input('Which colum you want to address?');
        if isempty(n)|| isempty(m)
            disp('Wrong message!')
            continue
        else if(m<=15)&&(m>=1)&&(n<=15)&&(n>=1)
            else
                disp('Wrong message!')
                continue;
            end
        end
        fl=is_legal2(n,m,CountZeros);
        if fl==0
            continue;
        end
        [Chessboard,CountZeros]=PlayMan(n,m,Chessboard,CountZeros);
        move=(-1)*move;
    elseif move==-1
        [n,m]=AIthink(Chessboard,CountZeros);
        [Chessboard,CountZeros]=PlayRobot(n,m,Chessboard,CountZeros);
        move=(-1)*move;
    end
    End=EndGame(n,m,Chessboard);
    if End==1
        disp('Game over')
        break
    end
end