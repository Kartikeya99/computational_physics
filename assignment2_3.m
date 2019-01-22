clc;
clear all;
height = 20;
dt = 0.01;
g = 9.8;
rho_air = 1.225;
rho_water = 997;
rho_ball = 940;

max_t = 5;
t= 0:dt:max_t;
t = transpose(t);
N = (max_t/dt)+1;
r = 0.1;

v = zeros(N, 1);
x = zeros(N, 1);
x(1) = height;

for i = 1:N-1
    v(i+1) = v(i) + g*dt - rho_air/rho_ball*g*dt;
    x(i+1) = x(i) + v(i)*dt;
    if (x(i+1)<0)
        x(i+1)=0;
        break;
    end
end
