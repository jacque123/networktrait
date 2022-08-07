%% Data Preparation

E = readtable('twitch/ENGB/musae_ENGB_edges.csv');

E = table2array(E) + 1;

U = unique(E);
n = size(U,1);

for i = 1:n

    E(E==U(i)) = i;

end

A = sparse(E(:,1),E(:,2),1,n,n);
A = A+A';

G = graph(A);