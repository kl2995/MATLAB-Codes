function AS=MergeSort2(A,n)
if n<=1
  return;
 elseif n<=1024
   AS=Sort1(A,n);
else
  AS=MergeSort(A,n);
end