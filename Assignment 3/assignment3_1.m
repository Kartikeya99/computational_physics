clc;
clear all;
g = 9.8;
l = 1;
dt = 0.01;
T = 0:dt:10;

init_theta = (10*3.14)/180;
init_w = 0;
[t,y1] = ode45(@shm_eq, T, [init_theta, init_w]);
figure(1);

figure(1);
plot(t,y1(:,1));
xlabel('Time in seconds(s)');
ylabel('Theta in radians');
title('SHM of Pendulum');

figure(2);
plot(y1(:,2),y1(:,1));
xlabel('Time in seconds(s)');
ylabel('Omega in radians/sec');
title('SHM of Pendulum');

dt = 0.01;
T = 0:dt:100;

init_x = 0.5;
init_v = 0;
k = 10;
m = 3;
[t,y2] = ode45(@spring_eq, T, [init_x, init_v]);

figure(3);
plot(t,y2(:,1));
xlabel('Time in seconds(s)');
ylabel('X in m');
title('SHM of Spring Mass');

figure(4);
plot(y2(:,2), y2(:,1));
xlabel('Time in seconds(s)');
ylabel('Velocity in m/s');
title('SHM of Spring Mass');
