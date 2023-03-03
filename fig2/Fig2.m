%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])


load('Fig2a.mat')

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
title("\mu = 8, \eta = 0, r = 50%n, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('Fig2b.mat')

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
title("n = 100, \eta = 0, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)




load('Fig2d.mat')

subplot(2,2,4)
P1 = mean(Res(:,1,:));
P1 = P1(:);
P2 = mean(Res(:,4,:) > 1);
P2 = P2(:);
P3 = mean(Res(:,4,:) == 0);
P3 = P3(:);

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
legend("Predictable","\nablaP > 1","\nablaP = 0","location","southeast")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)



etasd = etas(21:51);
P1d = P1(21:51);
P2d = P2(21:51);
P3d = P3(21:51);



load('Fig2c.mat')

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
legend("hide")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Probability")
title("n = 100, \mu = 8, r = 50, \alpha = 0.8")
set(gca,'fontname','Palatino','fontsize',fs)

%%

figure('Position', [0 1000 1000 2000])

load('Fig2e.mat')

subplot(2,2,1)
hold on;
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#D95319') %for legend

P = plot(G,'Layout','force','NodeLabel',{},'EdgeColor','#000000', ...
    'NodeColor','#77AC30','MarkerSize',7);
box on;
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')

legend('Conformist', 'Anticonformist','Location','northeast')
title("\eta = -80, \sigma = 0")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])



load('Fig2f.mat')

subplot(2,2,2)
hold on;
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#00AC30') %for legend
plot([NaN NaN], [NaN NaN], '.', ...
    'MarkerSize',20,'Color','#D95319') %for legend

P = plot(G,'Layout','force','NodeLabel',{},'EdgeColor','#000000', ...
    'NodeColor','#77AC30','MarkerSize',7);
box on;
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')
legend('hide')

title("\eta = 8, \sigma = 18.68")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])