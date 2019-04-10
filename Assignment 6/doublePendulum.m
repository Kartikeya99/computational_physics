clear all;
close all;
clc;

t_start = 0;
t_end = 10;
dt = 0.01;
t_span = [t_start:dt:t_end];

global m1;
global m2;
global l1;
global l2;
global g;

m1 = 50;
m2 = 30;
l1 = 2;
l2 = 1; 
g = 9.8;

initial = zeros(4,1);
initial(1) = 1;
initial(2) = 0.0;
initial(3) = 2;
initial(4) = 0.0;
options = odeset('RelTol',1.0e-6,'AbsTol',1.0e-6);

[t,y] = ode45(@dp,t_span,initial,options);

V = -1*(m1+m2)*g*l1*cos(y(:,1)) - m2*g*l2*cos(y(:,3));

K = 0.5*(m1+m2)*y(:,2).^2*l1.^2 + 0.5*m2*(l2.^2*y(:,4).^2 + 2*l1*l2*y(:,2).*y(:,4).*cos(y(:,1)-y(:,3)));

T = K + V;

x1 = l1*sin(y(:,1));
y1 = -l1*cos(y(:,1));
vx1 = l1*cos(y(:,1)).*y(:,2);
vy1 = -1*l1*sin(y(:,1)).*y(:,2);

x2 = l1*sin(y(:,1)) + l2*sin(y(:,3));
y2 = -l1*cos(y(:,1))-l2*cos(y(:,3));
vx2 = l1*cos(y(:,1)).*y(:,2) + l2*cos(y(:,3)).*y(:,4);
vy2 = -l1*sin(y(:,1)).*y(:,2) - l2*sin(y(:,3)).*y(:,4);

figure(1)
plot(x1, y1, 'r', x2, y2, 'b');
xlabel('X - Coordinate');
ylabel('Y - Coordinate');
%title(['Initial \theta_1 = ',  num2str(initial(1)), '   Initial \theta_2 = ', num2str(initial(3))])
title('Chaotic Motion');
legend('Pendulum 1', 'Pendulum 2');

figure(2)
plot(y(:,1),'linewidth',2);
hold on;
plot(y(:,3),'r','linewidth',2);
legend('\theta_1','\theta_2');
xlabel('time','fontSize',14);
ylabel('theta','fontSize',14);
title(['m1 = ', num2str(m1),' m2 = ', num2str(m2),' || L1 = ', num2str(l1),' L2 = ',  num2str(l2)]);
hold off

figure(3)
plot(t, K, 'r', t, V, 'b', t, T, 'g');
legend('Kinetic Energy', 'Potential Energy', 'Total Energy');
xlabel('time');
ylabel('Energy');
title('Energies vs Time');