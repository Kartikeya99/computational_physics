clc;
clear all;
height = 1000;
dt = 0.01;
g = 9.8;
rho_water = 1;

max_t = 500;

N = (max_t/dt)+1;
r = .08;
coeff_viscosity_water = 8.9*10e-4;
t(1) = 0;
v(1) = 0;
x(1) = height;
volume_ball = 4/3 * pi * r.^3;
mass_ball = 1;
idx = -1;
for i = 1:N-1
    v(i+1) = v(i) + dt*(g*(1-(rho_water*volume_ball/mass_ball))-(6*pi*coeff_viscosity_water*r*v(i)/mass_ball));
    %x(i+1) = x(i) - v(i)*dt;
    t(i+1) = t(i)+dt;
end

plot(t,v,'r');
hold on;


