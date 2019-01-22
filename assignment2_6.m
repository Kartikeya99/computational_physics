clc;
clear all;
dt = 0.01;
g = 9.8;
u = 5;
max_t = floor(2*u/g)+1;
t= 0:dt:max_t;
t = transpose(t);
N = max_t/dt + 1;

%x(1) = 0;
%v(1) = 5;
%i=1;

v=zeros(N,1);
x = zeros(N,1);
v(1) = u;
for i=1:N
    v(i+1) = v(i) - g*dt;
    x(i+1) = x(i) + v(i)*dt;
end

%while (2 > 1)
%    v(i+1) = v(i)-g*dt;
%    z = x(i)+v(i)*dt;
%    i=i+1;    
%    if(z<=0)
%        x(i+1)=0;
%        break;
%    else
%        x(i+1) = z;
%    end
%end
