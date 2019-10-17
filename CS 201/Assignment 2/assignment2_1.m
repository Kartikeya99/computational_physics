clc;
clear all;
initial_height = 10;
dt = 0.1;
g_earth = 9.8;
g_moon = g_earth/6;
max_t = 1;
t= 0:dt:max_t;
t = transpose(t);
N = max_t/dt + 1;

v = zeros(N, 1);
x = zeros(N, 1);
x(1) = initial_height;

for i = 1:N-1
    v(i+1) = v(i)+g_moon*dt;
    x(i+1) = x(i)-v(i)*dt;
    t(i+1) = t(i)+dt;
end

x_analytical = x(1) + v(1)*t - 1/2* g_moon*(t.^2);
figure(1);
plot(t, x, 'r', t, x_analytical, 'b');
title('Computational vs Analytical comparison of Position vs Time (dt = 0.1)');
xlabel('Time in seconds');
ylabel('Position of the body in meters');
legend('Computational Solution', 'Analytical Solution');
