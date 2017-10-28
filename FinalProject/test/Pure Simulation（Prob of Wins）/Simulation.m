function [r,c]=Simulation(CountZeros,Leftboundary,Rightboundary,Upperboundary,Lowerboundary)
if nargin==1
    Leftboundary=1;Rightboundary=15;Upperboundary=1;Lowerboundary=15;
end
rangeLR=Rightboundary-Leftboundary;
rangeUL=Lowerboundary-Upperboundary;
legal=false;
while (~legal)
    r=Upperboundary+randi(rangeUL);
    c=Leftboundary+randi(rangeLR);
    legal=is_legal2(r,c,CountZeros);
end
return