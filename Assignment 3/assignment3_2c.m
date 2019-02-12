clc;
clear all;

init_velocity = 750;
init_theta = 3.14/4;
initv_x = init_velocity.*cos(init_theta);
initv_y = init_velocity.*sin(init_theta);
init_x = 0;
init_y = 0;

rad_earth = 6400000;
g = 9.8;
dt = 0.01;
T = 0:dt:100;

[t,v1] = ode45(@projectile_alt, T, [init_x, init_y, initv_x, initv_y]);
plot(v1(:,1), v1(:,2));