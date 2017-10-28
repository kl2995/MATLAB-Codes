function [R,iter] = PageRank(M, d, R_err, max_iter)
%This computes the pagerank for a given web-graph
%M is the Matrix corresponding to the web-graph
%d is the probability of following hyperlinks, 
%thus 1-d is the the probability of starting over with any webpage in the graph
%R_err is the convergence testing parameter. When the PageRank obtained from 
%two consecutive iterations is <=R_err, we stop
%max_iter is the maximum number of iterations allowed. by default it is 10000
%The return variables are R--the PageRank and iter--the # of iterations conducted
if(nargin<4) %max_iter is not specified
	max_iter=10000;
end
N = size(M, 2); % N is equal to either dimension of M and the number of documents
last_R = R=1/N*ones(N,1); %The last pagerank computed
StartOver=(1 - d)/N*ones(N,1);
R=StartOver+d*M*last_R;
iter=1;
while( (sum(abs(R - last_R)) > R_err) && (iter<=max_iter) )
%if the updates change the pagerank quite a bit (>=R_err) and if the number of iterations
%is no greater than the maximum allowed iterations, we keep updating PageRank
	last_R = R; %Store the PageRank from previous iteration
	R=StartOver+d*M*last_R; %Update the pagerank
	iter=iter+1; %update the number of iterations conducted
end

return; %this is optional, indicating we return to where the function was called

end %this is optional, indicating the end of the function