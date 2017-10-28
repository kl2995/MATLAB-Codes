function [M1,N1]=PlayMan(n,m,M,N)
    t=0:0.1:2*pi;
    plot(n+cos(t)/2, m+sin(t)/2, 'k -')
    fill(n+cos(t)/2, m+sin(t)/2, 'w')
    hold on
    M(n,m)=2;
    N(n,m)=0;
    M1=M;
    N1=N;
end