clear all; close all;
global m k x0 v0 dt Ts c omega F0
m = 1;
k = 1;
x0 = 10;
v0 = 0;
dt = 0.01;
Ts = 25;
omega = 1.01;
c = 2;
F0 = 1.5;
t0 = 0;
t = t0:dt:t0+Ts;
u0 = [x0; v0];

[t, u] = ode45(@oscillationWithForceFunc, t, u0);
pos = u(:, 1);
vel = u(:, 2);

ke = 0.5 * m * vel.^2;
pe = 0.5 * k * pos.^2;

figure(1);
plot(t, pos, t, vel); grid;

figure(2);
plot(pos, vel); grid;

figure(3);
plot(t, ke, t, pe); grid;

figure(4);
plot(t, F0 * cos(omega * t), t, pos); grid;



omega = 0.75;
t = t0:dt:Ts;

[t, u] = ode45(@oscillationWithForceFunc, t, u0);
pos = u(:, 1);
vel = u(:, 2);

ke = 0.5 * m * vel.^2;
pe = 0.5 * k * pos.^2;

figure(5);
plot(t, pos, t, vel); grid;
legend('x', 'y');

figure(6);
plot(pos, vel); grid;