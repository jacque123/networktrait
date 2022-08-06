function [G,A] = randomnetwork(n,m,eta)
%RANDOMNETWORK generates the graph object G and the adjacency matrix
%A of a parameterized network with n nodes and an exact mean degree m. The
%parameter eta regulates the standard deviation of degrees of nodes as
%follows:
%   eta < 0: low standard deviation (lattice-like);
%   eta = 0: Erdos-Renyi;
%   eta > 0: high standard deviation (star-like).

if n < 1 || m < 0

    error("The number of nodes n must be at least 1, and the mean " + ...
        "degree m must be at least 0.")

else

    ned = m*n/2; %number of edges

    ind = (1:n)'; %indices
    deg = zeros(n,1); %preallocate degrees
    avl = ones(n,1); %preallocate availability of being an edge end
    wgh = ones(n,1); %assign initial weights
    prb = cumsum(wgh)./sum(wgh); %probability of being selected

    A = zeros(n,n); %preallocate adjacency

    for i = 1:ned

        %select the first end of an edge
        temp = [ind,prb,avl,wgh];
        temp(temp(:,3)==0,4) = 0; %assign weight 0 to unavailable nodes
        temp(:,2) = cumsum(temp(:,4))./sum(temp(:,4)); %update probability
        temp(:,2) = temp(:,2) - rand; %select a node randomly
        node1 = min(temp(temp(:,2)>=0 & temp(:,3)~=0,1));

        %select the second end of the edge
        temp = [ind,prb,avl,wgh];
        temp(temp(:,3)==0,4) = 0; %assign weight 0 to unavailable nodes
        temp(node1,4) = 0; %avoid loops
        temp(A(:,node1)==1,4) = 0; %avoid parallel edges
        temp(:,2) = cumsum(temp(:,4))./sum(temp(:,4));  %update probability
        temp(:,2) = temp(:,2) - rand; %select another node randomly
        node2 = min(temp(temp(:,2)>=0 & temp(:,3)~=0,1));

        %update adjacency
        A(node1,node2) = 1;
        A(node2,node1) = 1;

        %update degrees
        deg(node1) = deg(node1) + 1;
        deg(node2) = deg(node2) + 1;
        wgh = (1+deg).^eta;

        %update availability
        if deg(node1) == n-1
            avl(node1) = 0;
        end
        if deg(node2) == n-1
            avl(node2) = 0;
        end


    end

    G = graph(A); %make graph object

end

end