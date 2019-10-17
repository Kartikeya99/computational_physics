clear all;
close all;
global cnst;
m=1;

k=1;


cnst = k/m;


timescale = 2*pi*sqrt(1/cnst);
dt = 0.01;

tstart = 0;
tfinal = 25;

u0 = zeros(2,1);
u0(1) = 10;    %initial pos
u0(2) = 0;  %initial velocity

[t,u] = ode45(@rhs,[tstart:dt:tfinal],u0);

x = u(:,1);
v = u(:,2);

y=[0:0.11:25]
figure(1)

plot(x,v);
hold on;
plot(x(1),v(1),'+');
hold on;
plot(x(4),v(4),'o');
title('Phase-Space Trajectory')

