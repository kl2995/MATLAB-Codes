M=[0 0.33 0.5 0.33 0.5 0.33 0.5; 
   0.33 0 0 0 0 0.33 0; 
	 0 0 0 0.33 0.5 0 0; 
	 0.33 0.33 0 0 0 0 0; 
	 0 0 0 0 0 0.33 0.5; 
	 0.33 0 0 0.33 0 0 0; 
	 0 0.33 0.5 0 0 0 0];
N=size(M,1);
colSum=sum(M);
M1=repmat(colSum,N,1);
M=M./M1;

R0=ones(N,1)/N;
d=0.1;
while(d>0 && d<=1)
  R=R0;
  R_n=(1-d)/7+d*M*R0;
	iter=1;
  while(max(abs(R_n-R))>1e-4)
    R=R_n;
    R_n=(1-d)/7+d*M*R_n;
		iter=iter+1;
  end
	fprintf('d=%.3f, iterations:%d\n',d,iter) %see how the iteration number changes for different d
	R_n
  d=d+0.05;
end

%%The following use for loop to do the same thing
for d=0.1:0.05:1
	R=R0;
  R_n=(1-d)/7+d*M*R0;
	iter=1;
  while(max(abs(R_n-R))>1e-4)
    R=R_n;
    R_n=(1-d)/7+d*M*R_n;
		iter=iter+1;
  end
	fprintf('d=%.3f, iterations:%d\n',d,iter) %see how the iteration number changes for different d
	R_n
end

%Note: using for loop gives the results including d=1, and use while loop only gives
%results up to d=0.95. You should check why this is the case if you are interested