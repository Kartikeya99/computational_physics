function F = rhs2(t,u)
global k;
global m;
global c;
F = zeros(2,1);
F(1) = u(2);
F(2) = -(k/m)*u(1) - (c/m)*u(2);
end