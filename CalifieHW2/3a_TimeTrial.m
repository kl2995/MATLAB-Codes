for i=1:11
  n=512*2^(i-1)
  A=1000*rand(n,1)
  tic;Sort1(A,n);toc
  tic;MergeSort(A,n);toc
  end
end