clear all;
close all;

global m p area density c
m = 50;
p = 100;
area = 0.3;
density = 1.225;
c = 0.5;


u0 = zeros(3,1);
u0(1) = 0%initial_x
u0(2) = 1 %initial_v
u0(3) = 0; %initial_a

tstart = 0;
tfinal = 1000;
dt = 1;

[t,u] = ode45(@rhs3d,[tstart:dt:tfinal],u0);

acc = -u(:,3) + p/(5*m);

figure(1)
plot(t,u(:,2));
title('Velocity vs time for bicycle');

figure(2)
plot(u(:,2),acc);
title('Acceleration vs velocity for bicycle');