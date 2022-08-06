function TD = attributetraits(G,r,alpha)
%ATTRIBUTETRAITS assigns the trait of being rebel to r individuals on the
%social network G. The parameter alpha regulates the extend of mixing 
%for individuals of different traits as follows:
%   alpha close to zero: dispersed (high mixing parameter);
%   alpha far away from zero: clustered (low mixing parameter).

if ~isa(G,'graph') || r < 0 || alpha == 0

    error("The network G must be a graph object; the number " + ...
        "of rebels must be non-negative; and the parameter " + ...
        "alpah must be non-zero.")

else

    n = numnodes(G); %number of individuals

    TD = zeros(n,2); %preallocate triat distribution

    ind = (1:n)'; %indices
    avl = ones(n,1); %preallocate availability to be chosen as a rebel
    wgh = ones(n,1); %assign initial weights
    prb = cumsum(wgh)./sum(wgh); %probability of being selected

    rebels = zeros(r,1); %preaccolate rebels

    for i = 1:r

        temp = [ind,prb,avl];
        temp(:,2) = temp(:,2) - rand; %select a rebel
        rebel = min(temp(temp(:,2)>=0 & temp(:,3)~=0,1));
        rebels(i) = rebel; %record the rebel

        wgh(rebel) = 0; %change the weight of the rebel
        nbrs = neighbors(G,rebel); %change the weight for available neighbors
        avlnbrs = nbrs(avl(nbrs)~=0);
        wgh(avlnbrs) = alpha*wgh(avlnbrs);
        avl(rebel) = 0; %change the availability of the rebel

        prb = cumsum(wgh)./sum(wgh); %update probability

    end

    TD(:,1) = ind;
    TD(rebels,2) = 1;

end

end