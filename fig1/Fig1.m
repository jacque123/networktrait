%% Introduction
%FIG1 runs the deterministic processes and draws figure 1.

%% Main
clear,clc

addpath("../functions/");

load('Fig1ab.mat')
A1 = A;
G1 = G;
TD1 = TD;

[xir1,xic1,xii1] = mixingparameters(G1,TD1); %get mixing parameters

load('Fig1cd.mat')
A2 = A;
G2 = G;
TD2 = TD;

[xir2,xic2,xii2] = mixingparameters(G2,TD2); %get mixing parameters

t = 10000; %number of steps
[CM1,CL1] = proceed(IC,G1,TD1,t); %run the deterministic processes
[CM2,CL2] = proceed(IC,G2,TD2,t); 

tau = 50; %choose tail length
[result1,PH1] = ispredictable(CL1,tau); %examine the predictability
[result2,PH2] = ispredictable(CL2,tau);

%% Visualization
Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000]) %panel a and b
subplot(2,2,1) %plot cumulative choices with first 100 steps
cut = 100;
plot(0:cut,CM1(1:cut+1),'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)

subplot(2,2,2) %plot social network with trait distribution
P = plot(G1,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1), ...
    'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
box on;
highlight(P,find(TD1(:,2)==1),'NodeColor','#D95319')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])


figure('Position', [0 1000 1000 2000]) %panel c, d and e
subplot(2,2,1) %plot cumulative choices with first 100 steps
cut = 100;
plot(0:cut,CM2(1:cut+1),'Color',Colors(3,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)

subplot(2,2,2) %plot social network with trait distribution
hold on;
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#D95319') %for legend

P = plot(G2,'Layout','force','NodeLabel',{},'EdgeColor','#000000', ...
    'NodeColor','#77AC30','MarkerSize',7);
box on
highlight(P,find(TD2(:,2)==1),'NodeColor','#D95319')
legend('Conformist', 'Anticonformist','Location','northeast')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])


subplot(2,2,[3,4]) %plot cumulative choices with 10000 steps
hold on
plot(0:t,CM1,'Color',Colors(1,:),'LineWidth',2)
plot(0:t,CM2,'Color',Colors(3,:),'LineWidth',2)
grid on
box on
legend('Toric lattice in panel B', 'Random network in panel D','Location','northwest')
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)


