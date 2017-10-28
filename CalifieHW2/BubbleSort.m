function A=BubbleSort(A,n)
%A is the array to sort; n is its length
%A bubble sort algorithm
%This is an implementation of the optimized version on wikipedia
%https://en.wikipedia.org/wiki/Bubble_sort
swapped = true; %Indicator of whether Swap has been conducted for each pass
while(swapped)
    swapped=false; %unless a change happens to the array.
    for i = 2:n 
       %if this pair is out of order
       if A(i-1) > A(i)
           % swap them and remember something changed
           temp=A(i-1);A(i-1)=A(i);A(i)=temp;
           swapped = true;
       end
    end
    n=n-1;
end
