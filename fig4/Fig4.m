%% Visualization

Colors = lines(7); %load colors
fs = 16; %set font size

ts = tinv([0.05  0.95],100-1);  

figure('Position', [0 1000 1000 2000])

load('Fig4a1.mat')

P1 = zeros(100,1,size(Res,3));

for i = 1:100
    
    range = ((i-1)*100+1):(i*100);
    P1(i,:,:) = max(sum((Res(range,1,:))==1),sum((Res(range,1,:))==0))./100;

end

E1 = std(reshape(P1,100,size(Res,3)))./10;
ER1l = ts(1)*E1;
ER1u = ts(2)*E1;
P1 = mean(reshape(P1,100,size(Res,3)));


load('Fig4a2.mat')

P2 = zeros(100,1,size(Res,3));

for i = 1:100
    
    range = ((i-1)*100+1):(i*100);
    P2(i,:,:) = max(sum((Res(range,1,:))==1),sum((Res(range,1,:))==0))./100;

end

E2 = std(reshape(P2,100,size(Res,3)))./10;
ER2l = ts(1)*E2;
ER2u = ts(2)*E2;
P2 = mean(reshape(P2,100,size(Res,3)));

load('Fig4a3.mat')

P3 = zeros(100,1,size(Res,3));

for i = 1:100
    
    range = ((i-1)*100+1):(i*100);
    P3(i,:,:) = max(sum((Res(range,1,:))==1),sum((Res(range,1,:))==0))./100;

end

E3 = std(reshape(P3,100,size(Res,3)))./10;
ER3l = ts(1)*E3;
ER3u = ts(2)*E3;
P3 = mean(reshape(P3,100,size(Res,3)));


subplot(2,2,1)

hold on

errorbar(linspace(0.01,1,100),P1,ER1l,ER1u,'.','MarkerSize',15)

errorbar(linspace(0,1,101),P2,ER2l,ER2u,'.','MarkerSize',15)

errorbar(linspace(0,1,101),P3,ER3l,ER3u,'.','MarkerSize',15)

ylim([0.79,1.01])
grid on
box on
legend('Number of individuals', 'Mean degree', 'Heterogeneity parameter', 'Location','southeast')
xlabel("Scaled parameter")
ylabel("Proportion")
title("Network topology parameters")
set(gca,'fontname','Palatino','fontsize',fs)







load('Fig4b1.mat')

P1 = zeros(100,1,size(Res,3));

for i = 1:100
    
    range = ((i-1)*100+1):(i*100);
    P1(i,:,:) = max(sum((Res(range,1,:))==1),sum((Res(range,1,:))==0))./100;

end

E1 = std(reshape(P1,100,size(Res,3)))./10;
ER1l = ts(1)*E1;
ER1u = ts(2)*E1;
P1 = mean(reshape(P1,100,size(Res,3)));


load('Fig4b2.mat')

P2 = zeros(100,1,size(Res,3));

for i = 1:100
    
    range = ((i-1)*100+1):(i*100);
    P2(i,:,:) = max(sum((Res(range,1,:))==1),sum((Res(range,1,:))==0))./100;

end

E2 = std(reshape(P2,100,size(Res,3)))./10;
ER2l = ts(1)*E2;
ER2u = ts(2)*E2;
P2 = mean(reshape(P2,100,size(Res,3)));


subplot(2,2,2)


hold on

errorbar(linspace(0,1,101),P1,ER1l,ER1u,'.','MarkerSize',15)

errorbar(linspace(0,1,101),P2,ER2l,ER2u,'.','MarkerSize',15)


ylim([0.79,1.01])
grid on
box on
legend('Number of rebels', 'Attributing parameter', 'Location','southeast')
xlabel("Scaled parameter")
ylabel("Proportion")
title("Trait distribution parameters")
set(gca,'fontname','Palatino','fontsize',fs)








%%
figure('Position', [0 1000 1000 2000])

load('Fig4c.mat')

subplot(2,2,[1,2]) %plot cumulative choices with 10000 steps
hold on
for i = 1:5
    if R(i)
        plot(0:t,RCM(:,i),'color',Colors(3,:),'LineWidth',2)
    else
        plot(0:t,RCM(:,i),'color',Colors(1,:),'LineWidth',2)
    end
end

grid on
box on
title("Initial choices produce the same type of cumulative sequences")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)



load('Fig4d.mat')

subplot(2,2,[3,4]) %plot cumulative choices with 10000 steps
hold on
for i = [2,5,8,4,6]
    if R(i)
        plot(0:t,RCM(:,i),'color',Colors(3,:),'LineWidth',2)
        PH =RPH{i};
        nt = length(PH); %number of tail subsequences
        if nt > 1
            xline(PH(1:min(nt,3)),'LineWidth',2) %draw eventual period
        end
    else
        plot(0:t,RCM(:,i),'color',Colors(1,:),'LineWidth',2)
    end
end
ylim([-20000,20000])
grid on
box on
legend('Unpredictable','Predictable','Location','northwest')
title("Initial choices produce different types of cumulative sequences")
xlabel("Step")
ylabel("Cumulative choice")
set(gca,'fontname','Palatino','fontsize',fs)
