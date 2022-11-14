Z0=2*rand(5);%题干要求将Z0生成为范围是0到2的5x5随机矩阵
[X0,Y0]=meshgrid(1:5);%用meshgrid把X0,Y0对应，便于形成网络
subplot(2,2,1)%设置分图1
mesh(X0,Y0,Z0,'FaceColor','texturemap')%绘制平滑前的图像,并且设置连接平面的颜色
title('1-平滑前的图像')%图一加标题
colormap("hsv")%设置颜色模式
caxis([0 1])%设置色条对应区间
colorbar%色条
subplot(2,2,2)%设置分图2
[X1,Y1]=meshgrid(1:0.25:5);
Z1=interp2(X0,Y0,Z0,X1,Y1,'cubic');
mesh(X1,Y1,Z1,'FaceColor','texturemap');
title('2-平滑后的图像')%图二加标题
hold on;
colormap("hsv")%设置颜色模式
colorbar%色条
shading interp%模式平滑
contour(X1,Y1,Z1,15);%等值线显示
caxis([0 1])%设置色条对应区间