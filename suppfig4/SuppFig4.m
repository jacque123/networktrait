%% Introduction
%SUPPFIG4 runs the deterministic processes and draws supplementary figure
%4.

%% Main
clear,clc

addpath("../functions/");

load('SuppFig4abc.mat')
A1 = A;
G1 = G;
TD1 = TD;

[xir1,xic1,xii1] = mixingparameters(G1,TD1); %get mixing parameters

load('SuppFig4def.mat')
A2 = A;
G2 = G;
TD2 = TD;

[xir2,xic2,xii2] = mixingparameters(G2,TD2); %get mixing parameters

t = 160000; %number of steps
[CM1,CL1] = proceed(IC,G1,TD1,t); %run the deterministic processes
t = 20000; %number of steps
[CM2,CL2] = proceed(IC,G2,TD2,t); 
%%
tau = 7646; %choose tail length
[result1,PH1] = ispredictable(CL1,tau); %examine the predictability
tau = 50;
[result2,PH2] = ispredictable(CL2,tau);

%% Visualization
Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000]) %panel a b and c
subplot(2,2,1) %plot cumulative choices with first 10000 steps
plot(0:10000,CM1(1:10001),'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)

subplot(2,2,2) %plot social network with trait distribution
P = plot(G1,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1), ...
    'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
box on
highlight(P,find(TD1(:,2)==1),'NodeColor','#D95319')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])


subplot(2,2,[3,4])
plot(0:160000,CM1(1:160001),'Color',Colors(1,:),'LineWidth',2)
hold on
xline(PH1(1:4),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)




figure('Position', [0 1000 1000 2000]) %panel c, d and e
subplot(2,2,1) %plot cumulative choices with first 100 steps
hold on;
plot(17701:17800,CL2(17701:17800),'.','Color',Colors(3,:),'MarkerSize',20)
xline(PH2(1),'LineWidth',2)
grid on
box on
title("Collective sequence")
xlabel("Step")
ylabel("Collective choice")
set(gca,'fontname','Palatino','fontsize',fs)

subplot(2,2,2) %plot social network with trait distribution
hold on
plot([NaN NaN], [NaN NaN], '.','MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',20,'Color','#D95319') %for legend
P = plot(G2,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1), ...
    'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
box on
highlight(P,find(TD2(:,2)==1),'NodeColor','#D95319')
legend('hide')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])


subplot(2,2,[3,4]) %plot cumulative choices with 10000 steps
hold on
plot(0:t,CM2,'Color',Colors(3,:),'LineWidth',2)
xline(PH2(1),'LineWidth',2)
grid on
box on
ylim([-2000,4000])
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)


