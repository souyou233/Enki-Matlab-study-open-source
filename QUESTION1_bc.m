clc
clear
disp("马某的MATLAB开源，请访问个人GITHUB:https://github.com/souyou233/Enki-Matlab-study-open-source,进行下载开发")
load('ValueForFitting.mat','Y');
load('ValueForFitting.mat','x');%导入之前保存的两个变量
ONE=polyval(polyfit(x,Y,1),x);%一次拟合
TWO=polyval(polyfit(x,Y,2),x);%二次拟合
THREE=polyval(polyfit(x,Y,3),x);%三次拟合
FOUR=polyval(polyfit(x,Y,4),x);%四次拟合
FIVE=polyval(polyfit(x,Y,5),x);%五次拟合
hold on%图保持
plot(ONE,'r','LineWidth',3,'LineStyle','-','Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',0.2)
%画图，x,y值是ONE，红色，线宽，3，线风格，实线，标记点，圈，标记点内部颜色，蓝色，标记点外围颜色，蓝色,点大小，0.2
plot(TWO,'yellow','LineWidth',3,'LineStyle','-','Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',0.2)
%画图，x,y值是TWO，黄色，线宽，3，线风格，实线，标记点，圈，标记点内部颜色，蓝色，标记点外围颜色，蓝色,点大小，0.2
plot(THREE,'green','LineWidth',3,'LineStyle','-','Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',0.2)
%画图，x,y值是THREE，绿色，线宽，3，线风格，实线，标记点，圈，标记点内部颜色，蓝色，标记点外围颜色，蓝色,点大小，0.2
plot(FOUR,'w','LineWidth',3,'LineStyle','-','Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',0.2)
%画图，x,y值是FOUR，白色，线宽，3，线风格，实线，标记点，圈，标记点内部颜色，蓝色，标记点外围颜色，蓝色,点大小，0.2
plot(FIVE,'Color',[0.6 0.3 0.1],'LineWidth',3,'LineStyle','-','Marker','o','MarkerFaceColor','blue','MarkerEdgeColor','blue','MarkerSize',0.2)
%画图，x,y值是FIVE，自定义颜色，线宽，3，线风格，实线，标记点，圈，标记点内部颜色，蓝色，标记点外围颜色，蓝色,点大小，0.2
xlabel('x轴');%x标题
ylabel('y轴待拟合数据');%y标题
title('一到五次拟合');%总标题
legend( '一次拟合','二次拟合','三次拟合','四次拟合','五次拟合');%图例
prettyAxes().dark()%外置库，用于美化图表