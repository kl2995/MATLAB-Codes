function [M,N]=Default
M=zeros(15,15);
N=ones(15,15);
for Index = 1:15
        plot([Index Index],[1 15],'-k');hold on
        plot([1 15],[Index Index],'-k');hold on
end
axis equal
axis([0 16 0 16])
hold on
end

