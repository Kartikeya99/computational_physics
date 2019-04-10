function F = rhs3d(t,u)
F = zeros(3,1);
global m p area density c

    if(u(2)> 5)
        Fdrag = (c*density*area*u(2)*u(2));
    else
        Fdrag = 0;
    end

F(1) = u(2) %dx/dt
F(2) = p/(m*u(2)) - Fdrag/m
F(3) =  Fdrag * F(2)/(u(2)*u(2))
end
