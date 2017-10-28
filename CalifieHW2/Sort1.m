function A=Sort1(A,n)
%plot(1:n,A,'o','MarkerFaceColor', 'r');%visualize the value
for i=n:-1:1
   [M, P]=MyMax(A(1:i), i);
   A(P)=A(i); A(i)=M;
  %pause;%stop and wait until pressing any key for continuing
  %plot(1:n,A,'o','MarkerFaceColor', 'r');%visualize the value
end

