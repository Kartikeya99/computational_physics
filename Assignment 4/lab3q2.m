clear all;
clc;
global k;
global m;
global c;
m=1;
k=1;
c = 0.5;
dt = 0.01;

tstart = 0;
tfinal = 25;
t = tstart:dt:tfinal;

u0 = zeros(2,1);
u0(1) = 10;    %initial pos
u0(2) = 0;  %initial velocity
i=1;
%for k=1:5
%    for m = 1:5
%        [t,u] = ode45(@rhs2,t,u0);
%        figure(i);
%        plot(t, u(:,1));
%        i=i+1;
%    end
%end
i=1;
for c=0:0.5:5
    [t,u] = ode45(@rhs2, t, u0);
    figure(i);
    plot(t,u(:,1));
    i=i+1;
end
