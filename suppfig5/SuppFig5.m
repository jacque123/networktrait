%% Introduction
%SUPPFIG5 runs the deterministic processes and draws supplementary figure
%5.

%% Main
clear,clc

addpath("../functions/");

m = 10; %lattice size
n = m^2; %number of nodes

IC = -ones(n,1); %set initial choices

[G1,A1] = toriclattice(m,8); %generate a social network

r = 50; %number of anticonformists
TD1 = [(1:n)',[ones(r,1);zeros(n-r,1)]];
TD2 = [(1:n)',repmat([1;0],r,1)];

[xir1,xic1,xii1] = mixingparameters(G1,TD1); %get mixing parameters
[xir2,xic2,xii2] = mixingparameters(G1,TD2); %get mixing parameters

t = 10; %number of steps
[CM1,CL1] = proceed(IC,G1,TD1,t); %run the deterministic process
[CM2,CL2] = proceed(IC,G1,TD2,t); %run the deterministic process


md = 8; %set mean degree
eta = 0; %set the heterogeneity parameter
[G2,A2] = randomnetwork(n,md,eta); %generate a social network
[G3,A3] = randomnetwork(n,md,eta); %generate a social network

TD3 = [(1:n)',zeros(n,1)]; %get trait distribution
TD4 = [(1:n)',ones(n,1)]; %get trait distribution

[xir3,xic3,xii3] = mixingparameters(G2,TD3); %get mixing parameters
[xir4,xic4,xii4] = mixingparameters(G3,TD4); %get mixing parameters

[CM3,CL3] = proceed(IC,G2,TD3,t); %run the deterministic process
[CM4,CL4] = proceed(IC,G3,TD4,t); %run the deterministic process


%% Visualization

load("SuppFig5.mat")

Colors = lines(7); %load colors
fs = 16; %font size

figure('Position', [0 1000 1000 2000])

subplot(2,2,1)
plot(0:t,CM1,'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)


subplot(2,2,2)
P = plot(G1,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1),'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
highlight(P,find(TD1(:,2)==1),'NodeColor','#D95319')
box on
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])

subplot(2,2,3)
plot(0:t,CM2,'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)


subplot(2,2,4)
P = plot(G1,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1),'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
highlight(P,find(TD2(:,2)==1),'NodeColor','#D95319')
box on
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])


figure('Position', [0 1000 1000 2000])

subplot(2,2,1)
plot(0:t,CM3,'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)

subplot(2,2,2)
P = plot(G2,'Layout','force','NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
highlight(P,find(TD3(:,2)==1),'NodeColor','#D95319')
box on
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[]) 


subplot(2,2,3)
plot(0:t,CM4,'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)

subplot(2,2,4)
hold on
plot([NaN NaN], [NaN NaN], '.','MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',20,'Color','#D95319') %for legend
P = plot(G3,'Layout','force','NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
highlight(P,find(TD4(:,2)==1),'NodeColor','#D95319')
box on
title("Social network and trait distribution")
legend('Conformist', 'Anticonformist','Location','northeast')
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[]) 


