function f=oscillationWithForceFunc(t, u)
    global k c omega F0 m
    f = zeros(2, 1);
    f(1) = u(2); %dx/dt = v
    f(2) = -(k/m)*u(1) - (c/m)*u(2) + (F0/m)*cos(omega * t); %dv/dt = a
end