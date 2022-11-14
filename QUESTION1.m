clc
clear
disp("马某的MATLAB开源，请访问个人GITHUB:https://github.com/souyou233/Enki-Matlab-study-open-source,进行下载开发")
x=linspace(-6,6,100);%分割100个区块
y=sin(2*x).*exp(-sqrt(2)*x);%题干中的方程
%生成震荡的数据，以便后面拟合操作
n=0.5;%设置震荡增幅系数（默认为0.5）
w=n*(2*rand(1,100)-1);%扰动（噪声）值
Y=y+w;%扰动后值
plot(Y);%画出扰动后的函数（测试用，非得分点）
save('ValueForFitting.mat','Y','x');%保存变量以便后续使用