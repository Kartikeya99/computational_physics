clc;
clear all;
height = 10;
dt = 0.01;
g = 9.8/6;
max_t = 1;
t= 0:dt:max_t;
t = transpose(t);
N = 101;

v = zeros(N, 1);
x = zeros(N, 1);
x(1) = height;

for i = 1:N-1
    v(i+1) = v(i)+g*dt;
    x(i+1) = x(i)-v(i)*dt;
end

display(x(N));