clc;
clear all;

init_velocity = 10;
init_theta = 3.14/4;
initv_x = init_velocity.*cos(init_theta);
initv_y = init_velocity.*sin(init_theta);
init_x = 0;
init_y = 0;

rad_earth = 6400000;
g = 9.8;
dt = 0.01;
T = 0:dt:1.45;

[t,v1] = ode45(@projectile, T, [init_x, init_y, initv_x, initv_y]);
x2 = initv_x.*T;
y2 = initv_y.*T - 1/2 *g .*(T.^2);
vx2 = initv_x;
vy2 = initv_y - g.*T;
figure(1);
subplot(2,2,1);
plot(T, v1(:,1), 'r', T, x2, 'b+');
xlabel('Time');
ylabel('Position in m');
title('Computational vs Analytical solution for X and Time');
legend('Computational', 'Analytical');

subplot(2,2,2);
plot(T, v1(:,2), 'r', T, y2, 'b+');
xlabel('Time');
ylabel('Position in m');
title('Computational vs Analytical solution for Y and Time');
legend('Computational', 'Analytical');

subplot(2,2,3);
plot(T, v1(:,3), 'r', T, vx2, 'b+');
xlabel('Time');
ylabel('Velocity_X in m/s');
title('Computational vs Analytical solution for V_X and Time');
legend('Computational', 'Analytical');

subplot(2,2,4);
plot(T, v1(:,4), 'r', T, vy2, 'b+');
xlabel('Time');
ylabel('Velocity_Y in m/s');
title('Computational vs Analytical solution for V_Y and Time');
legend('Computational', 'Analytical');