clear all
close all
clc

t = [63 70.7 79.3 82.7 87.7 87.7 89.7 90.7 97.3 97.7 98.3 99.3 99.3];
score = [2746 2817 2905 2937 2981 2981 3004 3010 3079 3079 3089 3095 3098];
x = 120 - t;

p1 = polyfit(t,score,1);
p2 = polyfit(t,score,2);
p3 = polyfit(t,score,3);

x1 = linspace(0,120);
y1 = polyval(p1,x1);
x2 = linspace(0,120);
y2 = polyval(p2,x2);
x3 = linspace(0,120);
y3 = polyval(p3,x3);

figure(1)
set(gcf,'color','w')
plot(t,score,'ko',x1,y1,'-b',x2,y2,'-r',x3,y3,'-g')
round(p1(1))
round(p1(2))

legend('Data','1Â÷','2Â÷','3Â÷')
xlim([0,110])
ylim([2000,3600])


