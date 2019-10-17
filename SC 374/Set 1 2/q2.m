clc;
clear all;
close all;

figure(1);
k = 1;
x = -pi:0.01:pi;
y = sin(k*x);
plot(x, y, 'LineWidth', 1.2);
hold on;
k = 5;
y = sin(k*x);
plot(x, y, 'LineWidth', 1.2);
k = 10;
y = sin(k*x);
plot(x, y, 'g', 'LineWidth', 1.2);
k = -2;
y = sin(k*x);
plot(x, y, 'LineWidth', 1.2);
k = -5;
y = sin(k*x);
plot(x, y, 'LineWidth', 1.2);
legend('k = 1', 'k = 5', 'k = 10', 'k = -2', 'k = -5');

figure(2);

x = -pi:0.01:pi;
y = sin(x);
z = y.*y;
plot(x, y, x, z);
legend('sin(x)', 'sin^2(x)');
title('sin(x) and sin^2(x)');