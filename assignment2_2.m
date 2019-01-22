%compare computational with exact result
clc;
clear all;
dt = 0.01;
max_t = 1;
t= 0:dt:max_t;

%try with different values of dt
t = transpose(t);
N = 101;

v = 50;
x = zeros(N, 1);

for i = 1:N-1
    x(i+1) = x(i)+v*dt;
end

display(x(N));