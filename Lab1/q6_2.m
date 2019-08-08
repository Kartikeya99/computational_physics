clc;
clear all;
close all;

x = 0.01:.01:5;
y = log(x);
y1 = x-1;
y2 = x-1 + -1/2*(x-1).^2;
y3 = x-1 + -1/2*(x-1).^2 + 1/3*(x-1).^3;

figure(1);
hold on;
plot(x, y);
plot(x, y1);
plot(x, y2);
plot(x, y3);
title('Comparison of taylor series and original function log(x)');
legend('Original', 'First Order Taylor Series', 'Second Order Taylor Series', 'Third Order Taylor Series');