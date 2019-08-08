clc;
clear all;
close all;

x = -4:0.01:4;
figure(1);
hold on;
for a = 0:5:10
    y = -1*a*x + x.^3;
    plot(x, y);
    y1 = -1*a + 3*x.^2;
    plot(x, y1);
    y2 = 6*x;
    plot(x, y2);  
end
legend('y for a = 0', 'y1 for a = 0', 'y2 for a = 0', 'y for a = 5', 'y1 for a = 5', 'y2 for a = 5', 'y for a = 10', 'y1 for a = 10', 'y2 for a = 10');
title('Y = -ax + x^3');
xlabel('X-Axis');
ylabel('Y-Axis');

figure(2);
hold on;
for a = 0:5:10
    y = -1*a*x.^2 + x.^4;
    plot(x, y);
    y1 = -2*a*x + 4*x.^3;
    plot(x, y1);
    y2 = -2*a + 12*x.^2;
    plot(x, y2);    
end
legend('y for a = 0', 'y1 for a = 0', 'y2 for a = 0', 'y for a = 5', 'y1 for a = 5', 'y2 for a = 5', 'y for a = 10', 'y1 for a = 10', 'y2 for a = 10');
title('Y = -ax^2 + x^4');
xlabel('X-Axis');
ylabel('Y-Axis');
