%compare computational with exact result
clc;
clear all;
dt = 0.1;
max_t = 1;
t= 0:dt:max_t;

%try with different values of dt
t = transpose(t);
N = max_t/dt+1;

v = 50;
x = zeros(N, 1);

for i = 1:N-1
    x(i+1) = x(i)+v*dt;
end
x_analytical = x(1)+v*t;
figure(1);
plot(t,x,'r', t, x_analytical, 'b');
title('Computational method vs Analytical Method of Postion vs Time (dt = 0.1)');
xlabel('Time in seconds');
ylabel('Position in meters');
legend('Analytical Solution','Computational Solution');