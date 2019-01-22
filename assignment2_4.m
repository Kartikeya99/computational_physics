clc;
clear all;
height = 200;
dt = 0.01;
g = 9.8;
rho_water = 997;

max_t = 50;
t= 0:dt:max_t;
t = transpose(t);
N = (max_t/dt)+1;
r = 0.05;
coeff_viscosity_water = 8.9*10e-4;

v = zeros(N, 1);
x = zeros(N, 1);
x(1) = height;
volume_ball = 4/3 * pi * r^3;
mass_ball = 5;
idx = -1;
for i = 1:N-1
    v(i+1) = v(i) + g*dt - 6*pi*coeff_viscosity_water*r*v(i)*dt/mass_ball - rho_water * g *volume_ball*dt/mass_ball;
    x(i+1) = x(i) - v(i)*dt;
    if (x(i+1)<0)
        idx = i;
        x(i+1)=0;
        break;
    end
end

display(x(N));