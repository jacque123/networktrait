function [G,A] = toriclattice(m,d)
%TORICLATTICE generates the graph object G and the adjacency matrix A of
%the m-by-m toric lattice with degree d=4 or d=8.

if (d~=4 && d~=8) || m < 4

    error("The first parameter m must be at least 4, and the second " + ...
        "parameter d must be either 4 or 8.")

else

    A = zeros(m^2,m^2); %preallocate adjacency

    I = (1:m^2)-1; %indices

    Q = fix(I./m); %quotients
    R = mod(I,m); %remainders

    NW = mod(Q+1,m)*m+mod(R-1,m); %northwestern node index
    N = mod(Q+1,m).*m+R; %northern node index
    NE = mod(Q+1,m)*m+mod(R+1,m); %northeastern node index
    E = Q.*m+mod(R+1,m); %eastern node index

    %degree-8 toric lattices
    if d == 8
        Info = [(NW+1)',(N+1)',(NE+1)',(E+1)'];
        for i = 1:m^2
            A(i,Info(i,1:4)) = 1; %update adjacency
        end
    end

    %degree-4 toric lattices
    if d == 4
        Info = [(N+1)',(E+1)'];
        for i = 1:m^2
            A(i,Info(i,1:2)) = 1;  %update adjacency
        end
    end

    A = A + A'; %complete adjacency
    G = graph(A); %make graph object

end

end