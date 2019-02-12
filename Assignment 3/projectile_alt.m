function d1dt = projectile_alt(t, x)
init_y = 1000;
R = 6400000;
g = 9.8;
d1dt(2) = x(4);
d1dt(1) = x(3);
d1dt(3) = -exp(-x(2)/init_y)*sqrt(x(3).^2+x(4).^2)*(4e-5)*x(3);
d1dt(4) = -g*(1 - (2*x(4))/R) - exp(-x(2)/init_y)*sqrt(x(3).^2+x(4).^2)* (4e-5)*x(4) ;
d1dt = d1dt.';
end