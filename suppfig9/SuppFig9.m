%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])

load('SuppFig9a.mat')
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
xlabel("Number of anticonformists (r)")
ylabel("Probability")
title("n = 50, \mu = 8, \eta = 0, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('SuppFig9b.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(rs',P1,'smoothingspline');
f2=fit(rs',P2,'smoothingspline');
f3=fit(rs',P3,'smoothingspline');

subplot(2,2,2)
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
title("n = 150, \mu = 8, \eta = 0, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig9c.mat')
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
xlabel("Number of anticonformists (r)")
ylabel("Probability")
title("n = 100, \mu = 4, \eta = 0, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig9d.mat')
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
title("n = 100, \mu = 12, \eta = 0, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)


%%

figure('Position', [0 1000 1000 2000])

load('SuppFig9e.mat')
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
xlabel("Number of anticonformists (r)")
ylabel("Probability")
title("n = 100, \mu = 8, \eta = 0, \alpha = 0.6")
set(gca,'fontname','Palatino','fontsize',fs)



load('SuppFig9f.mat')
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

f1=fit(rs',P1,'smoothingspline');
f2=fit(rs',P2,'smoothingspline');
f3=fit(rs',P3,'smoothingspline');

subplot(2,2,2)
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
legend("Predictable","\nablaP > 1","\nablaP = 0","location","southwest")
xlabel("Number of anticonformists (r)")
ylabel("Probability")
title("n = 100, \mu = 8, \eta = 0, \alpha = 1.0")
set(gca,'fontname','Palatino','fontsize',fs)
