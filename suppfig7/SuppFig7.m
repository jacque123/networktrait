%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])


load('SuppFig7a.mat')

subplot(2,2,1)
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
title("n = 50, \eta = 0, r = 25, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig7b.mat')

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
title("n = 150, \eta = 0, r = 75, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig7c.mat')

subplot(2,2,3)
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
title("n = 100, \eta = -80, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig7d.mat')

subplot(2,2,4)
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
title("n = 100, \eta = 8, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


%%


figure('Position', [0 1000 1000 2000])

load('SuppFig7e.mat')

subplot(2,2,1)
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
title("n = 100, \eta = 0, r = 40, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig7f.mat')

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
title("n = 100, \eta = 0, r = 70, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig7g.mat')

subplot(2,2,3)
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
title("n = 100, \eta = 0, r = 50, \alpha = 0.6")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig7h.mat')

subplot(2,2,4)
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
legend("Predictable","\nablaP > 1","\nablaP = 0","location","southeast")
xlabel("Mean degree (\mu)")
ylabel("Probability")
title("n = 100, \eta = 0, r = 50, \alpha = 1.0")
set(gca,'fontname','Palatino','fontsize',fs)

