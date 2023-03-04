%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])

load('SuppFig12a.mat')

subplot(2,2,1)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(ns',P1,'smoothingspline');
f2=fit(ns',P2,'smoothingspline');
f3=fit(ns',P3,'smoothingspline');

hold on
plot(ns,P1,'.','MarkerSize',15)
plot(ns,P2,'.','MarkerSize',15)
plot(ns,P3,'.','MarkerSize',15)

F1 = plot(f1,ns,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,ns,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,ns,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend("hide")
xlabel("Number of individuals (n)")
ylabel("Probability")
title("\mu = 8, \beta = 0.15, r = 50%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig12b.mat')

subplot(2,2,2)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(mds',P1,'smoothingspline');
f2=fit(mds',P2,'smoothingspline');
f3=fit(mds',P3,'smoothingspline');

hold on
plot(mds,P1,'.','MarkerSize',15)
plot(mds,P2,'.','MarkerSize',15)
plot(mds,P3,'.','MarkerSize',15)

F1 = plot(f1,mds,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,mds,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,mds,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend("hide")
xlabel("Mean degree (\mu)")
ylabel("Probability")
title("n = 100, \beta = 0.15, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)





load('SuppFig12c.mat')

subplot(2,2,3)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(betas',P1,'smoothingspline');
f2=fit(betas',P2,'smoothingspline');
f3=fit(betas',P3,'smoothingspline');

hold on
plot(betas,P1,'.','MarkerSize',15)
plot(betas,P2,'.','MarkerSize',15)
plot(betas,P3,'.','MarkerSize',15)

F1 = plot(f1,betas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,betas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,betas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend("Predictable","\nablaP > 1","\nablaP = 0","location","northeast")
xlabel("Watts–Strogatz parameter (\beta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig12d.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(rs',P1,'smoothingspline');
f2=fit(rs',P2,'smoothingspline');
f3=fit(rs',P3,'smoothingspline');

subplot(2,2,4)
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
xlabel("Number of anticonformists (r)")
ylabel("Probability")
title("n = 100, \mu = 8, \beta = 0.15, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



figure('Position', [0 1000 1000 2000])


load('SuppFig12e.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(alphas',P1,'smoothingspline');
f2=fit(alphas',P2,'smoothingspline');
f3=fit(alphas',P3,'smoothingspline');

subplot(2,2,1)
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
title("n = 100, \mu = 8, \beta = 0.15, r = 50")
set(gca,'fontname','Palatino','fontsize',fs)


load('SuppFig12f.mat')


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
legend('Conformist', 'Anticonformist','Location','northwest')
title("Social network and trait distribution")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])

