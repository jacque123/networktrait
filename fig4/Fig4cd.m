%% Setup
clear,clc

addpath("../functions/");

%network topology
n = 100; %number of nodes
md = 8; %set mean degree
eta = 0; %set the heterogeneity parameter

[G,A] = randomnetwork(n,md,eta); %generate a social network

%trait distribution
r = floor(0.5*n); %number of rebels
alpha = 0.8; %set the attributing parameter

TD = attributetraits(G,r,alpha); %get trait distribution


%% Process

%process settings
t = 10000; %number of steps

rp = 5;

R = zeros(rp,1);
RCM = zeros(t+1,rp);
RIC = zeros(n,rp);
RPH = cell(rp,1);

for i = 1:rp

    i

    %initial choices
    IC = randsample([-1,1],n,true)'; %set initial choices
    
    [CM,CL] = proceed(IC,G,TD,t); %run the deterministic process

    tau = 50; %choose tail length
    [result,PH] = ispredictable(CL,tau); %examine the predictability
    
    R(i) = result;
    RCM(:,i) = CM; 
    RIC(:,i) = IC;
    RPH{i} = PH;

end

%% Visualization
Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])

subplot(2,2,2) %plot social network with trait distribution
hold on;
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#D95319') %for legend

P = plot(G,'Layout','force','NodeLabel',{},'EdgeColor','#000000', ...
    'NodeColor','#77AC30','MarkerSize',7);
box on;
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')
legend('Conformist', 'Rebel','Location','northeast')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])

subplot(2,2,[3,4]) %plot cumulative choices with 10000 steps
hold on
for i = 1:rp
    if R(i)
        plot(0:t,RCM(:,i),'color',Colors(3,:),'LineWidth',2)

        PH =RPH{i};
        nt = length(PH); %number of tail subsequences
        if nt > 1
            xline(PH(1:min(nt,3)),'LineWidth',2) %draw eventual period
        end
    else
        plot(0:t,RCM(:,i),'color',Colors(1,:),'LineWidth',2)
    end
end

grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)

