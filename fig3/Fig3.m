%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])

load('Fig3a.mat')
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
title("n = 100, \mu = 8, \eta = 0, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


load('Fig3b.mat')
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
title("n = 100, \mu = 8, \eta = 0, r = 50")
set(gca,'fontname','Palatino','fontsize',fs)



load('Fig3c.mat')
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
title("Toric lattice: m =10, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


load('Fig3d.mat')
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
legend("hide")
xlabel("Attributing parameter (\alpha)")
ylabel("Probability")
title("Toric lattice: m =10, r = 50")
set(gca,'fontname','Palatino','fontsize',fs)



figure('Position', [0 1000 1000 2000])

load('Fig3e.mat')
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
title("Regular networks: \eta = -80, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


load('Fig3f.mat')
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
title("Regular networks: \eta = -80, r = 50")
set(gca,'fontname','Palatino','fontsize',fs)





load('Fig3g.mat')
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
title("Star-like networks: \eta = 8, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


load('Fig3h.mat')
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
title("Star-like networks: \eta = 8, r = 50")
set(gca,'fontname','Palatino','fontsize',fs)


