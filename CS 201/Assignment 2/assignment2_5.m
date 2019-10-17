clc;
clear all;
height = 20000;
dt = 0.01;
g = 9.8;
rad_earth = 6400000;
rho_air = 1.225;

max_t = 10;
t= 0:dt:max_t;
t = transpose(t);
N = (max_t/dt)+1;
r = 0.1;

v = zeros(N, 1);
x = zeros(N, 1);
x(1) = height;
volume_ball = 4/3*pi*r.^3;
mass_ball = 100;

for i = 1:N-1
    v(i+1) = v(i) + g*(1-2*(x(i)/rad_earth))*dt*(1 - rho_air*volume_ball/mass_ball);
    x(i+1) = x(i) - v(i)*dt;
    if (x(i+1)<0)
        x(i+1)=0;
        break;
    end
end

figure(1);
plot(t, x, 'r');
title('Computational Analysis of Position vs Time');
xlabel('Time in seconds');
ylabel('Position of the body in meters');

figure(2);
plot(t,v,'r');
title('Computational Analysis of Velocity vs Time');
xlabel('Time in seconds');
ylabel('Velocity of the body in meters/sec');
