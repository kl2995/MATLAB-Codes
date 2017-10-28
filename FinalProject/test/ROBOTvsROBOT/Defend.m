function [rt,ct]=Defend(r,c,Chessboard,CountZeros,Situation)
rt=[];ct=[];
if Situation(1,1)>0
   [~,rT1,rT2,cT1,cT2]=is_adjacent1(r,c,Chessboard);
   legal1=is_legal2(rT1,cT1,CountZeros);
   legal2=is_legal2(rT2,cT2,CountZeros);
   if (legal1)
       rt=rT1;ct=cT1;
       return
   end
   if (legal2)
       rt=rT2;ct=cT2;
       return
   end
end
if Situation(1,2)>0
    [~,rT1,rT2,cT1,cT2]=is_adjacent2(r,c,Chessboard);
   legal1=is_legal2(rT1,cT1,CountZeros);
   legal2=is_legal2(rT2,cT2,CountZeros);
   if (legal1)
       rt=rT1;ct=cT1;
       return
   end
   if (legal2)
       rt=rT2;ct=cT2;
       return
   end
end
if Situation(1,3)>0
    [~,rT1,rT2,cT1,cT2]=is_adjacent3(r,c,Chessboard);
   legal1=is_legal2(rT1,cT1,CountZeros);
   legal2=is_legal2(rT2,cT2,CountZeros);
   if (legal1)
       rt=rT1;ct=cT1;
       return
   end
   if (legal2)
       rt=rT2;ct=cT2;
       return
   end
end
if Situation(1,4)>0
    [~,rT1,rT2,cT1,cT2]=is_adjacent4(r,c,Chessboard);
   legal1=is_legal2(rT1,cT1,CountZeros);
   legal2=is_legal2(rT2,cT2,CountZeros);
   if (legal1)
       rt=rT1;ct=cT1;
       return
   end
   if (legal2)
       rt=rT2;ct=cT2;
       return
   end
end

