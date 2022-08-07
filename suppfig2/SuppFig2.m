%% Visualization
%SUPPFIG2 plots supplementary figure 2 with the data generated from
%clusters.

load('SuppFig2.mat')

Colors = lines(7); %load colors
fs = 16; %set font size

figure('Position', [0 1000 1000 2000])

Res = Res1; %[-100,100]

Data1 = reshape(Res(:,1,:),t,nd);
M1 = mean(Data1);
Data2 = reshape(Res(:,2,:),t,nd);
M2 = mean(Data2);
Data3 = reshape(Res(:,3,:),t,nd);
M3 = mean(Data3);

subplot(2,2,1)
hold on
plot(etas1,M1,'.','MarkerSize',15)
plot(etas1,M2,'.','MarkerSize',15)
plot(etas1,M3,'.','MarkerSize',15)
grid on
box on
ylim([0,25])
title("-100 \leq \eta \leq 100")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Degree deviation (\sigma)")
set(gca,'fontname','Palatino','fontsize',fs)



Res = Res2; %[-10,10]

Data1 = reshape(Res(:,1,:),t,nd);
M1 = mean(Data1);
Data2 = reshape(Res(:,2,:),t,nd);
M2 = mean(Data2);
Data3 = reshape(Res(:,3,:),t,nd);
M3 = mean(Data3);

subplot(2,2,2)
hold on
plot(etas2,M1,'.','MarkerSize',15)
plot(etas2,M2,'.','MarkerSize',15)
plot(etas2,M3,'.','MarkerSize',15)
grid on
box on
ylim([0,25])
title("-10 \leq \eta \leq 10")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Degree deviation (\sigma)")
set(gca,'fontname','Palatino','fontsize',fs)



Res = Res3; %[-5,5]

Data1 = reshape(Res(:,1,:),t,nd);
M1 = mean(Data1);
Data2 = reshape(Res(:,2,:),t,nd);
M2 = mean(Data2);
Data3 = reshape(Res(:,3,:),t,nd);
M3 = mean(Data3);

subplot(2,2,3)
hold on
plot(etas3,M1,'.','MarkerSize',15)
plot(etas3,M2,'.','MarkerSize',15)
plot(etas3,M3,'.','MarkerSize',15)
grid on
box on
ylim([0,25])
title("-5 \leq \eta \leq 5")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Degree deviation (\sigma)")
set(gca,'fontname','Palatino','fontsize',fs)



Res = Res4; %[-2,2]

Data1 = reshape(Res(:,1,:),t,nd);
M1 = mean(Data1);
Data2 = reshape(Res(:,2,:),t,nd);
M2 = mean(Data2);
Data3 = reshape(Res(:,3,:),t,nd);
M3 = mean(Data3);

subplot(2,2,4)
hold on
plot(etas4,M1,'.','MarkerSize',15)
plot(etas4,M2,'.','MarkerSize',15)
plot(etas4,M3,'.','MarkerSize',15)
grid on
box on
ylim([0,25])
legend("\mu = 4","\mu = 8","\mu = 12","Location","northwest")
title("-2 \leq \eta \leq 2")
xlabel("Heterogeneity parameter (\eta)")
ylabel("Degree deviation (\sigma)")
set(gca,'fontname','Palatino','fontsize',fs)


