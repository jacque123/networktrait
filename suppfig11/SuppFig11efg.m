%% Main

addpath('../functions/');
load('PTBR.mat')

%trait distribution
r = 956; %number of rebels
alpha = 1; %set the attributing parameter


TD = attributetraits(G,r,alpha); %get trait distribution

%process settingsh
t = 10000; %number of steps


%initial choices
IC = -ones(n,1); %randsample([-1,1],n,true)'; %set initial choices

[CM,CL] = proceed(IC,G,TD,t); %run the deterministic process

tau = 50; %choose tail length
[result,PH] = ispredictable(CL,tau); %examine the predictability


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
    'NodeColor','#77AC30','MarkerSize',3);
box on;
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')
legend('Conformist', 'Rebel','Location','northeast')
title("Real social network: r = 956, \alpha = 1")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])


subplot(2,2,1) %plot cumulative choices with 10000 steps
hold on



plot(0:100,CM(1:101),'color',Colors(1,:),'LineWidth',2)
nt = length(PH); %number of tail subsequences
if nt > 1
    xline(PH(1:min(nt,3)),'LineWidth',2) %draw eventual period
end
grid on
box on
ax = gca;
ax.YAxis.Exponent = 3;
title("Cumulative sequence")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)



subplot(2,2,[3,4]) %plot cumulative choices with 10000 steps
hold on



plot(0:t,CM,'color',Colors(1,:),'LineWidth',2)
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


