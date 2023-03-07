
Colors = lines(7); %load colors
fs = 16; %set font size

PC = [];

tp = 0.06;
yll = 0;
ylm = 12;

figure('Position', [0 1000 1000 2000])

load('SuppFig3a100.mat')
RR1 = zeros(10000,4);
for i = 1:40

    RR1(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end



FLM1 = fitlm(RR1(:,3),RR1(:,1));
Rsq1 = FLM1.Rsquared.Ordinary;
Coeffs1 = FLM1.Coefficients.Estimate;
txt1 = strcat(['y = ',num2str(Coeffs1(2),'%0.2f'),'x + ',num2str(Coeffs1(1),'%0.2f'),', ','R^2 = ',num2str(Rsq1,'%0.2f')]);

%%

load('SuppFig3a50.mat')
RR2 = zeros(10000,4);
for i = 1:40

    RR2(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end


FLM2 = fitlm(RR2(:,3),RR2(:,1));
Rsq2 = FLM2.Rsquared.Ordinary;
Coeffs2 = FLM2.Coefficients.Estimate;
txt2 = strcat(['y = ',num2str(Coeffs2(2),'%0.2f'),'x + ',num2str(Coeffs2(1),'%0.2f'),', ','R^2 = ',num2str(Rsq2,'%0.2f')]);


load('SuppFig3a150.mat')
RR3 = zeros(10000,4);
for i = 1:40

    RR3(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end


FLM3 = fitlm(RR3(:,3),RR3(:,1));
Rsq3 = FLM3.Rsquared.Ordinary;
Coeffs3 = FLM3.Coefficients.Estimate;
txt3 = strcat(['y = ',num2str(Coeffs3(2),'%0.2f'),'x + ',num2str(Coeffs3(1),'%0.2f'),', ','R^2 = ',num2str(Rsq3,'%0.2f')]);




subplot(2,2,1)
hold on
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(1,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(2,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(3,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color','#969696') %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(4,:)) %for legend
plot(RR1(RR1(:,2)==1 & RR1(:,4)==1,3),RR1(RR1(:,2)==1 & RR1(:,4)==1,1)+2,'.','MarkerSize',7,'Color','#8A9399')
plot(RR1(RR1(:,2)==1 & RR1(:,4)==0,3),RR1(RR1(:,2)==1 & RR1(:,4)==0,1)+2,'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR1(RR1(:,2)==0,3),RR1(RR1(:,2)==0,1) + 2,'.','MarkerSize',4,'Color',Colors(1,:))

plot(RR2(RR2(:,2)==1 & RR2(:,4)==1,3),RR2(RR2(:,2)==1 & RR2(:,4)==1,1)-2,'.','MarkerSize',7,'Color','#9C908C')
plot(RR2(RR2(:,2)==1 & RR2(:,4)==0,3),RR2(RR2(:,2)==1 & RR2(:,4)==0,1)-2,'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR2(RR2(:,2)==0,3),RR2(RR2(:,2)==0,1) - 2,'.','MarkerSize',4,'Color',Colors(2,:))

plot(RR3(RR3(:,2)==1 & RR3(:,4)==1,3),RR3(RR3(:,2)==1 & RR3(:,4)==1,1)+6,'.','MarkerSize',7,'Color','#9D988C')
plot(RR3(RR3(:,2)==1 & RR3(:,4)==0,3),RR3(RR3(:,2)==1 & RR3(:,4)==0,1)+6,'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR3(RR3(:,2)==0,3),RR3(RR3(:,2)==0,1) +6,'.','MarkerSize',4,'Color',Colors(3,:))
ff1 = fit(RR1(:,3),RR1(:,1)+2,'poly1');
FF1 = plot(ff1);
set(FF1,'color','#000000','LineWidth',2);
ff2 = fit(RR2(:,3),RR2(:,1)-2,'poly1');
FF2 = plot(ff2);
set(FF2,'color','#000000','LineWidth',2);
ff3 = fit(RR3(:,3),RR3(:,1)+6,'poly1');
FF3 = plot(ff3);
set(FF3,'color','#000000','LineWidth',2);
grid on
box on
ylim([yll,ylm])
xL=xlim;
yL=ylim;
%text(xL(1)+tp,yL(1)+tp*ylm/2,txt1,'HorizontalAlignment','left','VerticalAlignment','bottom','fontname','Palatino','fontsize',fs)
legend('n = 100', 'n = 50', 'n = 150','Predictable','Incorrect', 'Location','southwest')
xlabel("Attributing parameter (\alpha)")
ylabel("Mixing parameter (\chi)")
title("Number of individuals (n)")
set(gca,'fontname','Palatino','fontsize',fs)




PC = [PC;sum(RR1(:,2)==1 & RR1(:,4)==0)];
PC = [PC;sum(RR2(:,2)==1 & RR2(:,4)==0)];
PC = [PC;sum(RR3(:,2)==1 & RR3(:,4)==0)];



%%
load('SuppFig3b4.mat')
RR2 = zeros(10000,4);
for i = 1:40

    RR2(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end

FLM2 = fitlm(RR2(:,3),RR2(:,1));
Rsq2 = FLM2.Rsquared.Ordinary;
Coeffs2 = FLM2.Coefficients.Estimate;
txt2 = strcat(['y = ',num2str(Coeffs2(2),'%0.2f'),'x + ',num2str(Coeffs2(1),'%0.2f'),', ','R^2 = ',num2str(Rsq2,'%0.2f')]);


load('SuppFig3b12.mat')
RR3 = zeros(10000,4);
for i = 1:40

    RR3(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end

FLM3 = fitlm(RR3(:,3),RR3(:,1));
Rsq3 = FLM3.Rsquared.Ordinary;
Coeffs3 = FLM3.Coefficients.Estimate;
txt3 = strcat(['y = ',num2str(Coeffs3(2),'%0.2f'),'x + ',num2str(Coeffs3(1),'%0.2f'),', ','R^2 = ',num2str(Rsq3,'%0.2f')]);





subplot(2,2,2)
hold on
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(1,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(2,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(3,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color','#969696') %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(4,:)) %for legend
plot(RR1(RR1(:,2)==1 & RR1(:,4)==1,3),RR1(RR1(:,2)==1 & RR1(:,4)==1,1),'.','MarkerSize',7,'Color','#8A9399')
plot(RR1(RR1(:,2)==1 & RR1(:,4)==0,3),RR1(RR1(:,2)==1 & RR1(:,4)==0,1),'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR1(RR1(:,2)==0,3),RR1(RR1(:,2)==0,1),'.','MarkerSize',4,'Color',Colors(1,:))

plot(RR2(RR2(:,2)==1 & RR2(:,4)==1,3),RR2(RR2(:,2)==1 & RR2(:,4)==1,1),'.','MarkerSize',7,'Color','#9C908C')
plot(RR2(RR2(:,2)==1 & RR2(:,4)==0,3),RR2(RR2(:,2)==1 & RR2(:,4)==0,1),'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR2(RR2(:,2)==0,3),RR2(RR2(:,2)==0,1),'.','MarkerSize',4,'Color',Colors(2,:))

plot(RR3(RR3(:,2)==1 & RR3(:,4)==1,3),RR3(RR3(:,2)==1 & RR3(:,4)==1,1),'.','MarkerSize',7,'Color','#9D988C')
plot(RR3(RR3(:,2)==1 & RR3(:,4)==0,3),RR3(RR3(:,2)==1 & RR3(:,4)==0,1),'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR3(RR3(:,2)==0,3),RR3(RR3(:,2)==0,1),'.','MarkerSize',4,'Color',Colors(3,:))
ff1 = fit(RR1(:,3),RR1(:,1),'poly1');
FF1 = plot(ff1);
set(FF1,'color','#000000','LineWidth',2);
ff2 = fit(RR2(:,3),RR2(:,1),'poly1');
FF2 = plot(ff2);
set(FF2,'color','#000000','LineWidth',2);
ff3 = fit(RR3(:,3),RR3(:,1),'poly1');
FF3 = plot(ff3);
set(FF3,'color','#000000','LineWidth',2);
grid on
box on
ylim([1,9])
xL=xlim;
yL=ylim;
%text(xL(1)+tp,yL(1)+tp*ylm/2,txt1,'HorizontalAlignment','left','VerticalAlignment','bottom','fontname','Palatino','fontsize',fs)
legend('\mu = 8', '\mu = 4', '\mu = 12', 'Predictable','Incorrect', 'Location','northeast')
xlabel("Attributing parameter (\alpha)")
ylabel("Mixing parameter (\chi)")
title("Mean degree (\mu)")
set(gca,'fontname','Palatino','fontsize',fs)



PC = [PC;sum(RR2(:,2)==1 & RR2(:,4)==0)];
PC = [PC;sum(RR3(:,2)==1 & RR3(:,4)==0)];




%%


load('SuppFig3c1.mat')
RR2 = zeros(10000,4);
for i = 1:40

    RR2(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end

FLM2 = fitlm(RR2(:,3),RR2(:,1));
Rsq2 = FLM2.Rsquared.Ordinary;
Coeffs2 = FLM2.Coefficients.Estimate;
txt2 = strcat(['y = ',num2str(Coeffs2(2),'%0.2f'),'x + ',num2str(Coeffs2(1),'%0.2f'),', ','R^2 = ',num2str(Rsq2,'%0.2f')]);


load('SuppFig3c2.mat')
RR3 = zeros(10000,4);
for i = 1:40

    RR3(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end

FLM3 = fitlm(RR3(:,3),RR3(:,1));
Rsq3 = FLM3.Rsquared.Ordinary;
Coeffs3 = FLM3.Coefficients.Estimate;
txt3 = strcat(['y = ',num2str(Coeffs3(2),'%0.2f'),'x + ',num2str(Coeffs3(1),'%0.2f'),', ','R^2 = ',num2str(Rsq3,'%0.2f')]);




subplot(2,2,3)
hold on
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(1,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(2,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(3,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color','#969696') %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(4,:)) %for legend
plot(RR1(RR1(:,2)==1 & RR1(:,4)==1,3),RR1(RR1(:,2)==1 & RR1(:,4)==1,1)+2,'.','MarkerSize',7,'Color','#8A9399')
plot(RR1(RR1(:,2)==1 & RR1(:,4)==0,3),RR1(RR1(:,2)==1 & RR1(:,4)==0,1)+2,'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR1(RR1(:,2)==0,3),RR1(RR1(:,2)==0,1) + 2,'.','MarkerSize',4,'Color',Colors(1,:))

plot(RR2(RR2(:,2)==1 & RR2(:,4)==1,3),RR2(RR2(:,2)==1 & RR2(:,4)==1,1)-2,'.','MarkerSize',7,'Color','#9C908C')
plot(RR2(RR2(:,2)==1 & RR2(:,4)==0,3),RR2(RR2(:,2)==1 & RR2(:,4)==0,1)-2,'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR2(RR2(:,2)==0,3),RR2(RR2(:,2)==0,1) - 2,'.','MarkerSize',4,'Color',Colors(2,:))

plot(RR3(RR3(:,2)==1 & RR3(:,4)==1,3),RR3(RR3(:,2)==1 & RR3(:,4)==1,1)+6,'.','MarkerSize',7,'Color','#9D988C')
plot(RR3(RR3(:,2)==1 & RR3(:,4)==0,3),RR3(RR3(:,2)==1 & RR3(:,4)==0,1)+6,'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR3(RR3(:,2)==0,3),RR3(RR3(:,2)==0,1) +6,'.','MarkerSize',4,'Color',Colors(3,:))
ff1 = fit(RR1(:,3),RR1(:,1)+2,'poly1');
FF1 = plot(ff1);
set(FF1,'color','#000000','LineWidth',2);
ff2 = fit(RR2(:,3),RR2(:,1)-2,'poly1');
FF2 = plot(ff2);
set(FF2,'color','#000000','LineWidth',2);
ff3 = fit(RR3(:,3),RR3(:,1)+6,'poly1');
FF3 = plot(ff3);
set(FF3,'color','#000000','LineWidth',2);
grid on
box on
ylim([yll,ylm])
xL=xlim;
yL=ylim;

%text(xL(1)+tp,yL(1)+tp*ylm/2,txt1,'HorizontalAlignment','left','VerticalAlignment','bottom','fontname','Palatino','fontsize',fs)
legend('\eta = 0', '\eta = -80', '\eta = 8', 'Predictable','Incorrect', 'Location','northeast')
xlabel("Attributing parameter (\alpha)")
ylabel("Mixing parameter (\chi)")
title("Heterogeneity parameter (\eta)")
set(gca,'fontname','Palatino','fontsize',fs)



PC = [PC;sum(RR2(:,2)==1 & RR2(:,4)==0)];
PC = [PC;sum(RR3(:,2)==1 & RR3(:,4)==0)];

%%

load('SuppFig3d30.mat')
RR2 = zeros(10000,4);
for i = 1:40

    RR2(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end

FLM2 = fitlm(RR2(:,3),RR2(:,1));
Rsq2 = FLM2.Rsquared.Ordinary;
Coeffs2 = FLM2.Coefficients.Estimate;
txt2 = strcat(['y = ',num2str(Coeffs2(2),'%0.2f'),'x + ',num2str(Coeffs2(1),'%0.2f'),', ','R^2 = ',num2str(Rsq2,'%0.2f')]);


load('SuppFig3d70.mat')
RR3 = zeros(10000,4);
for i = 1:40

    RR3(((i-1)*250+1):(i*250),:) = Res(1:250,[2,1,5,6],i);

end

FLM3 = fitlm(RR3(:,3),RR3(:,1));
Rsq3 = FLM3.Rsquared.Ordinary;
Coeffs3 = FLM3.Coefficients.Estimate;
txt3 = strcat(['y = ',num2str(Coeffs3(2),'%0.2f'),'x + ',num2str(Coeffs3(1),'%0.2f'),', ','R^2 = ',num2str(Rsq3,'%0.2f')]);



subplot(2,2,4)
hold on
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(1,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(2,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(3,:)) %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color','#969696') %for legend
plot([NaN NaN], [NaN NaN], '.','MarkerSize',11,'Color',Colors(4,:)) %for legend
plot(RR1(RR1(:,2)==1 & RR1(:,4)==1,3),RR1(RR1(:,2)==1 & RR1(:,4)==1,1),'.','MarkerSize',7,'Color','#8A9399')
plot(RR1(RR1(:,2)==1 & RR1(:,4)==0,3),RR1(RR1(:,2)==1 & RR1(:,4)==0,1),'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR1(RR1(:,2)==0,3),RR1(RR1(:,2)==0,1),'.','MarkerSize',4,'Color',Colors(1,:))

plot(RR2(RR2(:,2)==1 & RR2(:,4)==1,3),RR2(RR2(:,2)==1 & RR2(:,4)==1,1),'.','MarkerSize',7,'Color','#9C908C')
plot(RR2(RR2(:,2)==1 & RR2(:,4)==0,3),RR2(RR2(:,2)==1 & RR2(:,4)==0,1),'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR2(RR2(:,2)==0,3),RR2(RR2(:,2)==0,1),'.','MarkerSize',4,'Color',Colors(2,:))

plot(RR3(RR3(:,2)==1 & RR3(:,4)==1,3),RR3(RR3(:,2)==1 & RR3(:,4)==1,1),'.','MarkerSize',7,'Color','#9D988C')
plot(RR3(RR3(:,2)==1 & RR3(:,4)==0,3),RR3(RR3(:,2)==1 & RR3(:,4)==0,1),'.','MarkerSize',7,'Color',Colors(4,:))
plot(RR3(RR3(:,2)==0,3),RR3(RR3(:,2)==0,1),'.','MarkerSize',4,'Color',Colors(3,:))
ff1 = fit(RR1(:,3),RR1(:,1),'poly1');
FF1 = plot(ff1);
set(FF1,'color','#000000','LineWidth',2);
ff2 = fit(RR2(:,3),RR2(:,1),'poly1');
FF2 = plot(ff2);
set(FF2,'color','#000000','LineWidth',2);
ff3 = fit(RR3(:,3),RR3(:,1),'poly1');
FF3 = plot(ff3);
set(FF3,'color','#000000','LineWidth',2);
grid on
box on
ylim([1,9])
xL=xlim;
yL=ylim;
%text(xL(1)+tp,yL(1)+tp*ylm/2,txt1,'HorizontalAlignment','left','VerticalAlignment','bottom','fontname','Palatino','fontsize',fs)
legend('r = 50', 'r = 30', 'r = 70', 'Predictable','Incorrect', 'Location','northeast')
xlabel("Attributing parameter (\alpha)")
ylabel("Mixing parameter (\chi)")
title("Number of anticonformists (r)")
set(gca,'fontname','Palatino','fontsize',fs)



PC = [PC;sum(RR2(:,2)==1 & RR2(:,4)==0)];
PC = [PC;sum(RR3(:,2)==1 & RR3(:,4)==0)];


%%

figure('Position', [0 1000 1000 2000])

load('SuppFig3a.mat')
subplot(2,2,1) %plot social network with trait distribution
P = plot(G,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1), ...
    'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')
title("Toric lattice: \alpha = 0.001, \chi = 5.52")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])

load('SuppFig3b.mat')
subplot(2,2,2) %plot social network with trait distribution
P = plot(G,'XData',repmat(1:m,1,m),'YData',reshape(repmat(1:m,m,1),m^2,1), ...
    'NodeLabel',{},'EdgeColor','#000000','NodeColor','#77AC30','MarkerSize',7);
highlight(P,find(TD(:,2)==1),'NodeColor','#D95319')
title("Toric lattice: \alpha = 10, \chi = 1.44")
set(gca,'fontname','Palatino','fontsize',fs,'xtick',[],'ytick',[])