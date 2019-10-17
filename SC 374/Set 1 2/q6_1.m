clc;
clear all;
close all;

x = -3:0.01:3;
y = exp(x);
y3 = 1 + x + x.^2/2 + x.^3/6;
y2 = 1 + x + x.^2/2;
y1 = 1 + x;

figure(1);
plot(x, y);
hold on;
plot(x, y1);
plot(x, y2);
plot(x, y3);
xlabel('X - axis');
ylabel('Y - axis');
title('y = exp(x) taylor + original');
legend('Original', 'First order taylor', 'Second order taylor', 'Third order taylor');
