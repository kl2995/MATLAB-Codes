function [r,c]=Choice(CumPayoff,CumVisitT)
Select=zeros(15,15);
for ii=1:15
    for jj=1:15
       if CumVisitT(ii,jj)>0
        Select(ii,jj)=CumPayoff(ii,jj)./CumVisitT(ii,jj);
       end
    end
end
[r,c]=SuperMax(Select);
