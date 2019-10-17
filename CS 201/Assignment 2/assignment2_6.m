clc;
clear all;
dt = 0.001;
g = 9.8;
u = 5;
max_t = floor(2*u/g)+1;

N = max_t/dt + 1;

t(1) = 0;
x(1) = 0;
v(1) = u;
for i=1:N
    v(i+1) = v(i) - g*dt;
    x(i+1) = x(i) + v(i)*dt;
    t(i+1) = t(i)+dt;
    if x(i+1) <=0
        x(i+1) = 0;
        break
    end
end

x_analytical = x(1) + u*t - 1/2*g*(t.^2);
v_analytical = u - g*t;

figure(1);
plot(t, x, 'r+', t, x_analytical, 'b');
title('Computational vs Analytical comparison of Position vs Time');
xlabel('Time in seconds');
ylabel('Position of the body in meters');
legend('Computational Solution', 'Analytical Solution');

figure(2);
plot(t, v, 'r+', t, v_analytical, 'b');
title('Computational vs Analytical comparison of Velocity vs Time');
xlabel('Time in seconds');
ylabel('Position of the body in meters');
legend('Computational Solution', 'Analytical Solution');

