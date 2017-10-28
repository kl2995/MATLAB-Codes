function [M,P]=MyMax(A,n)
%The algorithm to search for the maximum entry and its position in an array
%A of n entries. Demonstrate for loop and if-statement.
M=A(1); P=1;
for i=2:n
    if A(i)>M
         M=A(i); P=i;
    end
end
