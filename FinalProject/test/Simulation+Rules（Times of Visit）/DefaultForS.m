function [CumPayoff,CumVisitT,Rank]=DefaultForS(CountZeros)%初始化电脑模拟
CumPayoff=zeros(15,15);CumVisitT=zeros(15,15);Rank=zeros(15,15);
for ii=1:15
    for jj=1:15
        if CountZeros(ii,jj)==0
            Rank(ii,jj)=-inf;
        else
            Rank(ii,jj)=inf;
        end
    end
end
return
