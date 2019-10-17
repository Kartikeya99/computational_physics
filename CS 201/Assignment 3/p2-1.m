clear all;
close all;
clc;

global cnst1;
global cnst2;

dt = 0.1;
time = 0:0.1:10;
pow_exerted = 400;
m = 60;
c = 0.5;
a = 0.25;
p = 1.225;
n = length(time);
v = zeros(n,1);
v(1) = 15;


if v(1) <= 5
    for s = 1:n-1
        v(s+1) = v(s) + ((pow_exerted*dt)/m) - (p*a*v(s)*v(s)*c/2);
    end
end
    
for s = 1:n-1
    v(s+1) = v(s) + (dt/m)*((pow_exerted/v(s)) - (p*a*v(s)*v(s)*c/2));
end

cnst1 = pow_exerted/m;
cnst2 = ((c*p*a)/(2*m));

u0 = zeros(1,1);
u0(1) = v(1);
[t,y] = ode23(@eq2, time , u0);


figure(1);
plot(t,y(:,1))
grid on;
title('Graph Obtained Using Inbuilt ODE Solver');
xlabel('Time (in seconds)');
ylabel('Velocity (in mts/sec)');

figure(2);
plot(time,v)
grid on;
title('Graph Obtained Using Euler Equation');
xlabel('Time (in seconds)');
ylabel('Velocity (mts/sec)');