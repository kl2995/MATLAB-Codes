function [r,c]=Choice(CumPayoff,CumVisitT,Leftboundary,Rightboundary,Upperboundary,Lowerboundary)
Select=zeros(15,15);
for ii=1:15
    for jj=1:15
       if CumVisitT(ii,jj)>0
        Select(ii,jj)=CumPayoff(ii,jj)./CumVisitT(ii,jj);
       else
        Select(ii,jj)=-inf;
       end
    end
end
[r,c]=SuperMax(Select,Leftboundary,Rightboundary,Upperboundary,Lowerboundary);
return
