clc;
clear all;
close all;

x = -3:0.01:3;
figure(1);

subplot(1,3,1);
y = exp(x);
plot(x, y, 'r', x, exp(-x), 'g');
title('y = exp(x)');
xlabel('X- axis');
ylabel('Y- axis');
legend('exp(x)', 'exp(-x)');

subplot(1,3,2);
y = x;
plot(x, y, 'r', x, exp(x), 'g', x, exp(-x), 'b');
title('y = x');
xlabel('X- axis');
ylabel('Y- axis');
legend('y = x', 'y = exp(x)', 'y = exp(-x)');

subplot(1,3,3);
x = 0:0.01:3;
y = log(x);
plot(x, y, 'r', x, exp(x), 'g', x, exp(-x), 'b');
title('y = ln(x)');
xlabel('X- axis');
ylabel('Y- axis');
legend('y = ln(x)', 'y = exp(x)', 'y = exp(-x)');