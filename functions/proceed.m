function [CM,CL,SCP] = proceed(IC,G,TD,t,recordpattern)
%PROCEED runs the deterministic process with initial choices IC, network
%topology G and trait distribution TD for t steps and returns the
%cumulative choices CM and the collective choices CL of the community.
%The boolean variable recordpattern determines if the process returns
%sequence of choice patterns SCP, which requires more memory.

if isa(G,'graph')

    A = adjacency(G); %get adjacency

elseif ismatrix(G)

    A = G;

end

if nargin == 4 || ~recordpattern

    CM = zeros(t+1,1); %preallocate results
    CL = zeros(t+1,1);

    CL(1) = sum(IC); %set the initial values
    CM(1) = CL(1);

    PC = IC; %set previous choices to initial choices

    for i = 2:(t+1)

        NC = choose(PC,A,TD); %get new choices from previous choices
        CL(i) = sum(NC); %update collective and cumulative choices
        CM(i) = CM(i-1) + CL(i);
        PC = NC; %new choices expire

    end

else

    CM = zeros(t+1,1); %preallocate results
    CL = zeros(t+1,1);

    CL(1) = sum(IC); %set the initial values
    CM(1) = CL(1);
    
    SCP = zeros(size(IC,1),t+1); %preallcoate choice patterns
    SCP(:,1) = IC; %set initial choices

    for i = 2:(t+1)

        NC = choose(SCP(:,i-1),A,TD); %get new choices from previous choices
        CL(i) = sum(NC); %update collective and cumulative choices
        CM(i) = CM(i-1) + CL(i);
        SCP(:,i) = NC; %record new choice pattern

    end

end

end

function NC = choose(PC,A,TD)
%CHOOSE generates the new choices NC of individuals in a community with
%network topology A (adjacency matrix) and trait distribution TD from the
%individuals' previous choice PC.

n = size(TD,1); %number of individuals

R = TD(:,2); %logic array of being a rebel

V = votecount(PC,A); %count the choices of neighbors

NC = zeros(n,1); %preallocate new choices

%if more neighbors choose 1 and the individual is a conformist
NC(V(:,1) > V(:,2) & R==0) = 1;
%if more neighbors choose -1 and the individual is a conformist
NC(V(:,1) < V(:,2) & R==0) = -1;

%if more neighbors choose 1 and the individual is a rebel
NC(V(:,1) > V(:,2) & R==1) = -1;
%if more neighbors choose -1 and the individual is a rebel
NC(V(:,1) < V(:,2) & R==1) = 1;

%if equal number of neighbors choose 1 and -1
NC(V(:,1) == V(:,2)) = PC(V(:,1) == V(:,2));

end

function V = votecount(PC,A)
%VOTECOUNT counts numbers of neighbors who chose 1 and -1 (V) in previous
%choices PC for every individual in the community with the network
%topology A (adjacency matrix).

n = size(PC,1); %number of individuals
V = zeros(n,2); %preallocate vote counts

RC = repmat(PC > 0,1,n); %replicate previous choices

Y = A & RC;
V(:,1) = full(sum(Y))'; %number of neighbors chose 1

N = A & ~RC;
V(:,2) = full(sum(N))'; %number of neighbors chose -1

end

