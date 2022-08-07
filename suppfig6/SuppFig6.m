%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])


load('SuppFig6a.mat')

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
title("\mu = 4, \eta = 0, r = 50%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig6b.mat')

subplot(2,2,2)
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
title("\mu = 12, \eta = 0, r = 50%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)





load('SuppFig6c.mat')

subplot(2,2,3)
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
title("\mu = 8, \eta = -80, r = 50%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig6d.mat')

subplot(2,2,4)
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
title("\mu = 8, \eta = 8, r = 50%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




%%


figure('Position', [0 1000 1000 2000])

load('SuppFig6e.mat')

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
title("\mu = 8, \eta = 0, r = 40%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig6f.mat')

subplot(2,2,2)
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
title("\mu = 8, \eta = 0, r = 70%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)





load('SuppFig6g.mat')

subplot(2,2,3)
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
title("\mu = 8, \eta = 0, r = 50%n, \alpha = 0.6")
set(gca,'fontname','Palatino','fontsize',fs)





load('SuppFig6h.mat')

subplot(2,2,4)
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
legend("Predictable","\nablaP > 1","\nablaP = 0","location","northeast")
xlabel("Number of individuals (n)")
ylabel("Probability")
title("\mu = 8, \eta = 0, r = 50%n, \alpha = 1.0")
set(gca,'fontname','Palatino','fontsize',fs)

