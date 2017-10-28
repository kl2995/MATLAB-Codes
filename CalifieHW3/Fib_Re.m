function fn=Fib_Re(n)
%Naive recursion for Fibonacci fn
if(n>2)
   fn=Fib_Re(n-1)+Fib_Re(n-2);
else
   fn=1;
end