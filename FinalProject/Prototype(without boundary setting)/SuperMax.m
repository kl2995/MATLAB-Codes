function [r,c]=SuperMax(Metrix,Leftboundary,Rightboundary,Upperboundary,Lowerboundary)
if nargin==1
    Leftboundary=1;Rightboundary=15;Upperboundary=1;Lowerboundary=15;
end
Max=Metrix(Upperboundary,Leftboundary);r=Upperboundary;c=Leftboundary;
rangeLR=Rightboundary-Leftboundary;
rangeUL=Lowerboundary-Upperboundary;
for ii=Upperboundary:(Upperboundary+rangeUL)
    for jj=Leftboundary:(Leftboundary+rangeLR)
        if Metrix(ii,jj)>=Max
            Max=Metrix(ii,jj);r=ii;c=jj;
        end
    end
end
return