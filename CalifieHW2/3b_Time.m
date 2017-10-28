load('Test_256.mat')
tic;Sort1(A,n);toc
tic;MergeSort(A,n);toc
tic;AS=MergeSort2(A,n);toc
B=[AS(1) AS(round(n/7)) AS(round(n/5)) AS(round(3*n/7)) AS(n)]'

load('Test_4096.mat')
tic;Sort1(A,n);toc
tic;MergeSort(A,n);toc
tic;AS=MergeSort2(A,n);toc
B=[AS(1) AS(round(n/7)) AS(round(n/5)) AS(round(3*n/7)) AS(n)]'

load('Test_65536.mat')
tic;Sort1(A,n);toc
tic;MergeSort(A,n);toc
tic;AS=MergeSort2(A,n);toc
B=[AS(1) AS(round(n/7)) AS(round(n/5)) AS(round(3*n/7)) AS(n)]'

load('Test_1048576.mat')
tic;Sort1(A,n);toc
tic;MergeSort(A,n);toc
tic;AS=MergeSort2(A,n);toc
B=[AS(1) AS(round(n/7)) AS(round(n/5)) AS(round(3*n/7)) AS(n)]'