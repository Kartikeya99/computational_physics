function F = rhs(t,u)
global cnst;
F = zeros(2,1);
F(1) = u(2);
F(2) = -cnst*u(1);
end