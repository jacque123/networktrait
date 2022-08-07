%% Main
%SUPPFIG2_CL generates data for supplementary figure 2 and is written for
%running on clusters.

parpool(48);

addpath("../functions/");

n = 100; %number of nodes

md1 = 4; %mean degrees
md2 = 8;
md3 = 12;

nd = 101; %number of data points
etas1 = linspace(-100,100,nd); %generate data points for eta
etas2 = linspace(-10,10,nd); 
etas3 = linspace(-5,5,nd); 
etas4 = linspace(-2,2,nd); 

t = 1000; %number of repeats

Res1 = zeros(t,3,nd); %preallocate results
Res2 = zeros(t,3,nd); 
Res3 = zeros(t,3,nd); 
Res4 = zeros(t,3,nd); 

parfor j = 1:nd

    j

    R1 = zeros(t,3); %preallocate temporary data
    R2 = zeros(t,3);
    R3 = zeros(t,3); 
    R4 = zeros(t,3); 

    eta1 = etas1(j); %load parameters
    eta2 = etas2(j);
    eta3 = etas3(j);
    eta4 = etas4(j);

    for i = 1:t

        G = randomnetwork(n,md1,eta1); %for eta in [-100,100]
        R1(i,1) = std(degree(G));
        G = randomnetwork(n,md2,eta1);
        R1(i,2) = std(degree(G));
        G = randomnetwork(n,md3,eta1);
        R1(i,3) = std(degree(G));

        G = randomnetwork(n,md1,eta2); %for eta in [-10,10]
        R2(i,1) = std(degree(G));
        G = randomnetwork(n,md2,eta2);
        R2(i,2) = std(degree(G));
        G = randomnetwork(n,md3,eta2);
        R2(i,3) = std(degree(G));

        G = randomnetwork(n,md1,eta3); %for eta in [-5,5]
        R3(i,1) = std(degree(G));
        G = randomnetwork(n,md2,eta3);
        R3(i,2) = std(degree(G));
        G = randomnetwork(n,md3,eta3);
        R3(i,3) = std(degree(G));

        G = randomnetwork(n,md1,eta4); %for eta in [-2,2]
        R4(i,1) = std(degree(G));
        G = randomnetwork(n,md2,eta4);
        R4(i,2) = std(degree(G));
        G = randomnetwork(n,md3,eta4);
        R4(i,3) = std(degree(G));

    end

    Res1(:,:,j) = R1; %record data
    Res2(:,:,j) = R2;
    Res3(:,:,j) = R3;
    Res4(:,:,j) = R4;

end

save("SuppFig2.mat")
