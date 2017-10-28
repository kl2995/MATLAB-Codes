%%
%This is a script to call the function of PageRank to compute pagerank

%To execute a command or a block of commands in the editor,
%you could select them, and then press F9. The output(if any) will be found in the command window

clear all; %remove all existing variables in the workspace

M=[0 0 1 1 0 1
   1 0 0 0 0 0
   0 1 0 0 1 0
   0 1 0 0 1 0
   0 0 1 1 0 0
   1 0 1 1 1 0];

N=size(M,2)%# of nodes in the web-graph

M0=sum(M); %column sum
M1=repmat(M0,N,1);
M=M./M1; %equivalently M=bsxfun(@rdivide, M, sum(M,1)); Could check the help
%After that we have the M that has column sum=1.

[R,iter] = PageRank(M, 0.95, 1e-4, 1000) 
%See what happens here: we call the function, and pass 0.95 to d, pass 1e-4 to R_err, 
%and pass 1000 to max_iter

%Next, see whether d or R_err or max_iter exists
d
R_err
max_iter
%try to understand why.


%%
%Next try to call the function with no output variables specified
clear R iter %remove previous computed output_max_field_width
PageRank(M, 0.95, 1e-4, 1000) %see what happen

%Now, do you think variables R and iter exist in workspace? check out with the next
R
iter

%Next try to call the function with only the first output variables specified 
R=PageRank(M, 0.95, 1e-4, 1000) %see what happen
%Now, do you think variables R and iter exist in workspace? check out with the next
R
iter

%What if we only want to know iter from PageRank? Next try it out
iter=PageRank(M, 0.95, 1e-4, 1000) %oops...what happen? why the computer is so stupid?

%The computer doesn't care about the name of the variables, only the order matters
%No matter what you call it in the above case, the return is first output variable
%So, although you may hope to get the 'iter' in the above case, you actually get the 
%first output of the function PageRank instead.

%Next we will also see the concept of local variables of function
clear R iter
max_iter=10;
[R,iter] = PageRank(M, 0.95, 1e-4) %calling PageRank with only 3 input variables
%In the function PageRank, since we have less than 4 input, we use default value
%defined for max_iter there, which is 10000.

%now, you would iter>10=max_iter, the max_err is the one we have in our workspace
%Why? max_iter inside the function PageRank doesn't matter, since it vanishes 
%once the function call is completed. 
%Variables in functions are local variables. What happens to the variables inside
%doesn't affect those in the outside. 
%After the function is completed, only the output variables are returned, and they
%are returned as values, not as named variables