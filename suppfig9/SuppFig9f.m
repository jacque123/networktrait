%% Main
%SUPPFIG9F generates data for supplementary figure 9f and is written for 
%running on clusters.

parpool(48);

addpath("../functions/");

n = 100; %number of nodes
md = 8;
eta = 0;

alpha = 1.0; %attributing parameter
nd = 101; %number of data points
rs = linspace(0,100,nd); %number of rebels

IC = -ones(n,1); %set initial choices



nrp = 10000; %number of repeats

Res = zeros(nrp,4,nd); %preallocate results

t = 10000; %number of steps
tau = 50; %choose tail length

parfor i = 1:nd

    i

    R = zeros(nrp,4); %preallocate temporary data

    r = rs(i); %load parameters

    for j = 1:nrp

        [G,A] = randomnetwork(n,md,eta); %generate a social network

        TD = attributetraits(G,r,alpha); %get trait distribution

        [xir,xic,xii] = mixingparameters(G,TD); %get mixing parameters

        [CM,CL] = proceed(IC,G,TD,t); %run the deterministic process

        [result,PH] = ispredictable(CL,tau); %examine the predictability

        R(j,1) = result;
        R(j,2) = xir;
        if result
            R(j,3) = PH(2)-PH(1); %length of eventual period
            R(j,4) = (abs(CM(PH(2)) - CM(PH(1))))/(PH(2) - PH(1)); 
        else
            R(j,3) = -1;
            R(j,4) = -1;
        end

    end

    Res(:,:,i) = R; %record data

end

save("SuppFig9f.mat")
