clc;
clear all;
g = 9.8;
rho_air = 1.225;
T = 10;
density1= 0.5;g = 9.8;
rho_air = 1.225;
T = 10;
density1= 0.5;
density2= 1;
density3= 1.5;
density4 = 2;
v1(1)= 0;
x1(1) = 0;
v2(1)= 0;
x2(1) = 0;
v3(1)= 0;
x3(1) = 0;
v4(1)= 0;
x4(1) = 0;
dt = 0.1;
t = 0:dt:T;
T = 10;
npoints = T/dt + 1;
a1 = ((density1 - rho_air)/density1)* g;
a2 = ((density2 - rho_air)/density2)* g;
a3 = ((density3 - rho_air)/density3)* g;
a4 = ((density4 - rho_air)/density4)* g;

for i=1:npoints-1
    v1(i+1) = v1(i) - a1*dt;
    v2(i+1) = v2(i) - a2*dt;
    v3(i+1) = v3(i) - a3*dt;
    v4(i+1) = v4(i) - a4*dt;
    x1(i+1) = x1(i) + v1(i)*dt;
    x2(i+1) = x2(i) + v2(i)*dt;
    x3(i+1) = x3(i) + v3(i)*dt;
    x4(i+1) = x4(i) + v4(i)*dt;
end
figure(1)
plot(t, x1, 'r', t, x2, 'g', t, x3, 'b', t, x4, 'y');
xlabel('Time');
ylabel('Position');
legend();


figure(2)
plot(t, v1, 'r', t, v2, 'g', t, v3, 'b', t, v4, 'y');
xlabel('Time');
ylabel('Velocity');
legend();
density2= 1;
density3= 1.5;
density4 = 2;
v1(1)= 0;
x1(1) = 0;
v2(1)= 0;
x2(1) = 0;
v3(1)= 0;
x3(1) = 0;
v4(1)= 0;
x4(1) = 0;
dt = 0.1;
t = 0:dt:T;
T = 10;
npoints = T/dt + 1;
a1 = ((density1 - rho_air)/density1)* g;
a2 = ((density2 - rho_air)/density2)* g;
a3 = ((density3 - rho_air)/density3)* g;
a4 = ((density4 - rho_air)/density4)* g;

for i=1:npoints-1
    v1(i+1) = v1(i) - a1*dt;
    v2(i+1) = v2(i) - a2*dt;
    v3(i+1) = v3(i) - a3*dt;
    v4(i+1) = v4(i) - a4*dt;
    x1(i+1) = x1(i) + v1(i)*dt;
    x2(i+1) = x2(i) + v2(i)*dt;
    x3(i+1) = x3(i) + v3(i)*dt;
    x4(i+1) = x4(i) + v4(i)*dt;
end
figure(1)
plot(t, x1, 'r', t, x2, 'g', t, x3, 'b', t, x4, 'y');
xlabel('Time');
ylabel('Position');
legend();


figure(2)
plot(t, v1, 'r', t, v2, 'g', t, v3, 'b', t, v4, 'y');
xlabel('Time');
ylabel('Velocity');
legend();