function [legal]=is_legal2(r,c,CountZeros)
legal=true;
if CountZeros(r,c)==0
    legal=false;
end
return