%% Main
%SUPPFIG3D70 generates data for supplementary figure 3d and is written 
%for running on clusters.

parpool(40);

addpath("../functions/");

nd = 40; %number of parallell cores
nrp = 250; %number of repeats
Res = zeros(nrp,6,nd); %preallocate results


n = 100; %number of nodes
md = 8; %mean degree
eta = 0; %heterogeneity parameter

r = 70; %number of rebels

IC = -ones(n,1); %set initial choices

t = 10000; %number of steps
tau = 50; %choose tail length

parfor i = 1:nd

    i

    R = zeros(nrp,6); %preallocate temporary data

    R(:,5) = 2*rand(nrp,1); %generate random parameters

    for j = 1:nrp
        

        alpha = R(j,5); %load parameters
        [G,A] = randomnetwork(n,md,eta); %generate a social network
        
        TD = attributetraits(G,r,alpha); %get trait distribution

        [xir,xic,xii] = mixingparameters(G,TD); %get mixing parameters

        [CM,CL,SCP] = proceed(IC,G,TD,t,true); %run the deterministic process

        [result,PH] = ispredictable(CL,tau); %examine the predictability

        R(j,1) = result;
        R(j,2) = xir;
        if result
            R(j,3) = PH(2)-PH(1); %length of eventual period
            R(j,4) = (abs(CM(PH(2)) - CM(PH(1))))/(PH(2) - PH(1)); 

            R(j,6) = sum(SCP(:,PH(end)) == SCP(:,PH(end-1))) == n;
        else
            R(j,3) = -1;
            R(j,4) = -1;
        end

    end

    Res(:,:,i) = R; %record data

end

save("SuppFig3d70.mat")
