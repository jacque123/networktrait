%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])



load('SuppFig8as.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;

load('SuppFig8a.mat')

subplot(2,2,1)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 50, \mu = 8, r = 25, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig8bs.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8b.mat')

subplot(2,2,2)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 150, \mu = 8, r = 75, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig8cs.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8c.mat')

subplot(2,2,3)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 4, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig8ds.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8d.mat')

subplot(2,2,4)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 12, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



%%

figure('Position', [0 1000 1000 2000])

load('SuppFig8es.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8e.mat')

subplot(2,2,1)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];


f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 40, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


load('SuppFig8fs.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8f.mat')

subplot(2,2,2)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 70, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig8gs.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8g.mat')

subplot(2,2,3)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend('hide')
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 50, \alpha = 0.6")
set(gca,'fontname','Palatino','fontsize',fs)


load('SuppFig8hs.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);
etasd = etas;
P1d = P1;
P2d = P2;
P3d = P3;


load('SuppFig8h.mat')

subplot(2,2,4)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

etas = [etas,etasd];
P1 = [P1;P1d];
P2 = [P2;P2d];
P3 = [P3;P3d];

f1=fit(etas',P1,'smoothingspline');
f2=fit(etas',P2,'smoothingspline');
f3=fit(etas',P3,'smoothingspline');

hold on
plot(etas,P1,'.','MarkerSize',15)
plot(etas,P2,'.','MarkerSize',15)
plot(etas,P3,'.','MarkerSize',15)

F1 = plot(f1,etas,P1);
set(F1,'color',Colors(1,:),'LineWidth',1.5);
F2 = plot(f2,etas,P2);
set(F2,'color',Colors(2,:),'LineWidth',1.5);
F3 = plot(f3,etas,P3);
set(F3,'color',Colors(3,:),'LineWidth',1.5);

yline([0,1],'LineWidth',1.5,'Alpha',0.2)
ylim([-0.1,1.1])
grid on
box on
legend("Predictable","\nablaP > 1","\nablaP = 0","location","southwest")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 50, \alpha = 1.0")
set(gca,'fontname','Palatino','fontsize',fs)
