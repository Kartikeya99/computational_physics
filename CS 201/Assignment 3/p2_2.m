clear all;
close all;
clc;

global cnst1;
global cnst2;

dt = 0.1;
time = 0:0.1:100;
power = 400;
m = 60;
c = 0.5;
a = 0.25;
p = 1.225;
n = length(time);
v = zeros(n,1);

v(1) = 0.001;


cnst1 = power/m;
cnst2 = ((c*p*a)/(2*m));

u0 = zeros(1,1);
u0(1) = v(1);
[t,y] = ode23(@eq2, time , u0);

    
