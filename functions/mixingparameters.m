function [mur,muc,mui] = mixingparameters(G,TD)
%MIXINGPARAMETERS returns the mixing parameters of an attributed social
%network with topology G and trait distribution TD. The mixing parameters
%are:
%   mur: average number of conformist neighbors around each rebel;
%   muc: average number of rebel neighbors around each conformist;
%   mui: average number of conformist neighbors around each individual.

if isa(G,'graph')

    A = adjacency(G); %get adjacency

elseif ismatrix(G)

    A = G;

end

B = A;
B(:,TD(:,2)==1) = B(:,TD(:,2)==1)*0; %remove rebels from neighbors
Mui = sum(B,2); %numbers of conformist neighbors around each individual
Mur = sum(B(TD(:,2)==1,:),2); %numbers of conformist neighbors around each rebel

B = A;
B(:,TD(:,2)~=1) = B(:,TD(:,2)~=1)*0; %remove conformists from neighbors
Muc = sum(B(TD(:,2)~=1,:),2); %numbers of rebel neighbors around each conformist

mur = mean(Mur); %take the averagess
muc = mean(Muc);
mui = mean(Mui);


end