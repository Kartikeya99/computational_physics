clc;
clear all;
g = 9.8;
T = 10;
a = 10;
b = 1;
v1(1)= 0;
x1(1) = 0;
dt = 0.1;
t = 0:dt:T;
T = 10;
npoints = T/dt + 1;

v1 = zeros(npoints, 1);
x1 = zeros(npoints, 1);

for i=1:npoints-1
    v1(i+1) = v1(i) + (a-b*v1(i))*dt;
    x1(i+1) = x1(i) + v1(i)*dt;
end

figure(1)
plot(t, x1, 'r');
xlabel('Time');
ylabel('Position');
legend();


figure(2)
plot(t, v1);
xlabel('Time');
ylabel('Velocity');
legend();