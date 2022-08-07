%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])

load('Fig5a.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(rs',P1,'smoothingspline');
f2=fit(rs',P2,'smoothingspline');
f3=fit(rs',P3,'smoothingspline');

subplot(2,2,1)
hold on
plot(rs,P1,'.','MarkerSize',15)
plot(rs,P2,'.','MarkerSize',15)
plot(rs,P3,'.','MarkerSize',15)

F1 = plot(f1,rs,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,rs,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,rs,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Number of rebels (r)")
ylabel("Probability")
title("Real social network: \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


load('Fig5b.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(alphas',P1,'smoothingspline');
f2=fit(alphas',P2,'smoothingspline');
f3=fit(alphas',P3,'smoothingspline');

subplot(2,2,4)
hold on
plot(alphas,P1,'.','MarkerSize',15)
plot(alphas,P2,'.','MarkerSize',15)
plot(alphas,P3,'.','MarkerSize',15)

F1 = plot(f1,alphas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,alphas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,alphas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend("Predictable","\nablaP > 1","\nablaP = 0","location","southeast")
xlabel("Attributing parameter (\alpha)")
ylabel("Probability")
title("Real social network: r = 956")
set(gca,'fontname','Palatino','fontsize',fs)




load('Fig5a1.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(rs',P1,'smoothingspline');
f2=fit(rs',P2,'smoothingspline');
f3=fit(rs',P3,'smoothingspline');

subplot(2,2,3)
hold on
plot(rs,P1,'.','MarkerSize',15)
plot(rs,P2,'.','MarkerSize',15)
plot(rs,P3,'.','MarkerSize',15)

F1 = plot(f1,rs,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,rs,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,rs,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Number of rebels (r)")
ylabel("Probability")
title("Real social network: \alpha = 1")
set(gca,'fontname','Palatino','fontsize',fs)


load('Fig5b1400.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(alphas',P1,'smoothingspline');
f2=fit(alphas',P2,'smoothingspline');
f3=fit(alphas',P3,'smoothingspline');

subplot(2,2,2)
hold on
plot(alphas,P1,'.','MarkerSize',15)
plot(alphas,P2,'.','MarkerSize',15)
plot(alphas,P3,'.','MarkerSize',15)

F1 = plot(f1,alphas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,alphas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,alphas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend("hide")
xlabel("Attributing parameter (\alpha)")
ylabel("Probability")
title("Real social network: r = 1400")
set(gca,'fontname','Palatino','fontsize',fs)

%%
figure('Position', [0 1000 1000 2000])

load('Fig5efg.mat')

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



