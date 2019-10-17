clc;
clear all;
close all;

x = -7:0.01:7;
y0 = 2;
mu = 3;
a = 2;
y = y0*exp(-a*((x-mu).*(x-mu)));

figure(1);
plot(x, y);
hold on;
title('Gaussian Distribution');
xlabel('X-axis');
ylabel('Y-axis');

y0 = 2;
mu = -1;
a = 1;
y = y0*exp(-a*((x-mu).*(x-mu)));
plot(x, y);

y0 = 1;
mu = 0;
a = 1;
y = y0*exp(-a*((x-mu).*(x-mu)));
plot(x, y);
legend('y0 = 2, mu = 3, a = 2', 'y0 = 2, mu = -1, a = 1', 'y0 = 1, mu = -1, a = 1');

figure(2);

z = y0./(1+a*(x-mu).^2);
plot(x, y);
hold on;
plot(x, z);
title('Comparison of the original Gaussian Function and the Lorentz function');
legend('Original Gaussian', 'Lorentz Function');
xlabel('X - axis');
ylabel('Y - axis');

figure(3);
x = 0:0.01:10;
y = y0*exp(-a*((x-mu).*(x-mu)));
z = y0./(1+a*(x-mu).^2);
plot(x, z-y);
title('Diff between the Gaussian Function and the Lorentz Function');
xlabel('X-axis');
ylabel('Y-axis');
