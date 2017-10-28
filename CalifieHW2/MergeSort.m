function A=MergeSort(A, n)
%A is the array to sort; n is its length
%Divide A into 2 sub-arrays, sort each one, and then merge into A
%if(n<=0) 
%     A=[]; return;
%elseif(n==1)
if(n<=1)
     return;
elseif(n==2)
    A=Merge(A(1),1,A(2),1);
else
    %Deal with the case where n>=3
    n1=floor(n/2); n2=n-n1;
    A1=MergeSort(A(1:n1),n1); 
    A2=MergeSort(A(n1+1:n),n2); 
    A=Merge(A1,n1, A2, n2);
end

function A=Merge(A1, n1, A2, n2)
%A1 and A2 are two sorted sub-arrays with length n1 and n2.
%A is the resulted sorted array.
%this is an internal function, since it is not the first function of this
%.m file, nor is it the one with the name identical to the .m file
%Only available within this file. Couldn't be called outside.
n=n1+n2; A=zeros(n,1);%initialize A
i=1; j=1; 
for k=1:n
   if(A1(i)<=A2(j))
      A(k)=A1(i); i=i+1;
      if(i>n1)&&(k<n)
      %A1 has completed, and k<n
          A(k+1:n)=A2(j:n2); break;
      end 	
    else
      A(k)=A2(j); j=j+1;
      if(j>n2)&&(k<n)
      %A2 has completed, and k<n
          A(k+1:n)=A1(i:n1); break;
      end 	
    end 	
end