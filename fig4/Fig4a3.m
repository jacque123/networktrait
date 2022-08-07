%% Main
%FIG4A3 generates data for figure 4a and is written for running on
%clusters.

parpool(48);

addpath("../functions/");

n = 100; %number of data points
md = 8;
nd = 101; %number of data points
etas = linspace(-80,20,nd); %generate data points for eta


r = 50; %number of rebels
alpha = 0.8; %attributing parameter



nrp = 10000; %number of repeats

Res = zeros(nrp,4,nd); %preallocate results

t = 10000; %number of steps
tau = 50; %choose tail length

parfor i = 1:nd

    i

    R = zeros(nrp,4); %preallocate temporary data

    eta = etas(i); %load parameters



    nic = 100;
    ntk = nrp/nic;

    for j = 1:ntk

        [G,A] = randomnetwork(n,md,eta); %generate a social network

        TD = attributetraits(G,r,alpha); %get trait distribution

        [xir,xic,xii] = mixingparameters(G,TD); %get mixing parameters

        for k = 1:nic

            IC = randsample([-1,1],n,true)'; %set initial choices

            [CM,CL] = proceed(IC,G,TD,t); %run the deterministic process

            [result,PH] = ispredictable(CL,tau); %examine the predictability

            ind = k + (j-1)*ntk;

            R(ind,1) = result;
            R(ind,2) = xir;
            if result
                R(ind,3) = PH(2)-PH(1); %length of eventual period
                R(ind,4) = (abs(CM(PH(2)) - CM(PH(1))))/(PH(2) - PH(1));
            else
                R(ind,3) = -1;
                R(ind,4) = -1;
            end

        end

    end

    Res(:,:,i) = R; %record data

end

save("Fig4a3.mat")