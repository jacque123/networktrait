%% Main
%FIG2A generates data for figure 2a and is written for running on 
%clusters.

parpool(48);

addpath("../functions/");

nd = 100; %number of data points
ns = linspace(2,200,nd); %generate data points for number of nodes
md = 8;
eta = 0;


rs = ns./2; %number of rebels
alpha = 0.8; %attributing parameter



nrp = 10000; %number of repeats

Res = zeros(nrp,4,nd); %preallocate results

t = 10000; %number of steps
tau = 50; %choose tail length

parfor i = 1:nd

    i

    R = zeros(nrp,4); %preallocate temporary data

    n = ns(i); 
    r = rs(i); %load parameters

    for j = 1:nrp
        
        IC = -ones(n,1); %set initial choices
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

save("Fig2a.mat")