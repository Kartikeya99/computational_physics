clc;
clear all;
init_height = 20;
dt = 0.01;
g = 9.8;
rho_air = 1.225;
rho_water = 997;
mass_ball = 0.001;

max_t = 1.5;
t= 0:dt:max_t;
t = transpose(t);
N = (max_t/dt)+1;
r = 0.1;

v_air = zeros(N, 1);
v_water = zeros(N, 1);

x_air = zeros(N, 1);
x_air(1) = init_height;

x_water = zeros(N, 1);
x_water(1) = init_height;
volume_ball = 4/3*pi*r.^3;

for i = 1:N-1
    z = v_air(i) + g*dt - rho_air*volume_ball*g*dt/mass_ball;
    if(z<=0)
        v(i+1)=0;
    end
    x_air(i+1) = x_air(i) - v_air(i)*dt;

end

for i = 1:N-1
    z = v_water(i) + g*dt - rho_water*volume_ball*g*dt/mass_ball;
    if(z<=0)
        v(i+1)=0;
    end
    x_water(i+1) = x_water(i) - v_water(i)*dt;
end

a_air = g*(1-rho_air*volume_ball/mass_ball);
if (a_air>=0)
    x_analytical_air = x_air(1) + v_air(1)*t - 1/2*a_air*(t.^2);
else
    x_analytical_air = zeros(size(x_air));
end

a_water = g*(1-rho_water*volume_ball/mass_ball);
if (a_water >= 0)
    x_analytical_water = x_water(1) + v_water(1)*t - 1/2*a_water*(t.^2);
else
    x_analytical_water = zeros(size(x_water));
end

figure(1);
plot(t, x_air, 'r', t, x_analytical_air, 'b');
title('Computational vs Analytical comparison of Position vs Time for air');
xlabel('Time in seconds');
ylabel('Position of the body in meters');
legend('Computational Solution', 'Analytical Solution');


figure(2);
plot(t, x_water, 'r', t, x_analytical_water, 'b');
title('Computational vs Analytical comparison of Position vs Time for water');
xlabel('Time in seconds');
ylabel('Position of the body in meters');
legend('Computational Solution', 'Analytical Solution');