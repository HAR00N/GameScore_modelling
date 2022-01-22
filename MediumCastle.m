clear all
close all
clc

t = [60.3 66 67 68.3 69.3 72.7 75 75 75.7 76 80.3 80.3 84.7 85.3 88 88.3 94.7];
score = [864 882 886 891 893 904 910 910 912 913 926 927 940 941 950 950 970];
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
ylim([10,1500])
