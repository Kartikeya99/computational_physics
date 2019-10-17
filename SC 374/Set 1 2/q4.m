clc;
clear all;
close all;

x = 0.01:0.01:2;
y = x.*log(x);
figure(1);
plot(x, y);
title('y = xln(x)');
xlabel('X - Axis');
ylabel('Y - Axis');