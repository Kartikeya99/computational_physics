clc;
clear all;
close all;

x = -pi:0.01:pi;

y = sin(x);
y1 = x;
y2 = x;
y3 = x - 1/6 * x.^3;

figure(1);
hold on;
plot(x, y);
plot(x, y1);
plot(x, y2);
plot(x, y3);

title('Comparison of Taylor series and original function');
xlabel('X-axis');
ylabel('Y-axis');
legend('sin(x)', 'First order taylor series', 'second order taylor series', 'Third order taylor series');

