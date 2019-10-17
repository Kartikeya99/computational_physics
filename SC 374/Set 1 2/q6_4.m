clc;
clear all;
close all;

x = -pi/2:0.01:pi/2;

y = cos(x);
y1 = x.^0;
y2 = 1 - x.^2/2;
y3 = y2;

figure(1);
hold on;
plot(x, y);
plot(x, y1);
plot(x, y2);
plot(x, y3);

title('Comparison of Taylor series and original function');
xlabel('X-axis');
ylabel('Y-axis');
legend('cos(x)', 'First order taylor series', 'second order taylor series', 'Third order taylor series');

