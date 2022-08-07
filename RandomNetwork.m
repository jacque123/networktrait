%% Introduction
%RANDOMNETWORK generates a community of individuals with a random network 
%as their social network and runs the deterministic process. 
%A visualization of the social network and cumulative choices is also 
%provided.

%% Setup
clear,clc

addpath("functions/");

%network topology
n = 100; %number of nodes
md = 8; %set mean degree
eta = 0; %set the heterogeneity parameter

[G,A] = randomnetwork(n,md,eta); %generate a social network

%%
%trait distribution
r = floor(0.5*n); %number of rebels
alpha = 0.8; %set the attributing parameter

TD = attributetraits(G,r,alpha); %get trait distribution

%initial choices
IC = -ones(n,1); %set initial choices
% IC = randsample([-1,1],n,true)';



%% Process

%process settings
t = 10000; %number of steps
tau = 50; %choose tail length

[xir,xic,xii] = mixingparameters(G,TD); %get mixing parameters

[CM,CL] = proceed(IC,G,TD,t); %run the deterministic process

[result,PH] = ispredictable(CL,tau); %examine the predictability

%% Visualization
Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])
subplot(2,2,1) %plot cumulative choices with first 100 steps
cut = 100;
plot(0:cut,CM(1:cut+1),'Color',Colors(1,:),'LineWidth',2)
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)


subplot(2,2,2) %plot social network with trait distribution
hold on
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#D95319') %for legend

P = plot(G,'Layout','force','NodeLabel',{},'EdgeColor','#000000', ...
    'NodeColor','#77AC30','MarkerSize',7);
box on
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')
legend('Conformist', 'Rebel','Location','northeast')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])



subplot(2,2,[3,4]) %plot cumulative choices with 10000 steps
plot(0:t,CM,'Color',Colors(1,:),'LineWidth',2)
hold on
nt = length(PH); %number of tail subsequences
if nt > 1
    xline(PH(1:min(nt,3)),'LineWidth',2) %draw eventual period
end
grid on
box on
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)
