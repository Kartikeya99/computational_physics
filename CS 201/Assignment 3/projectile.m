function d1dt = projectile(t, h)
R = 6400000;
g = 9.8;

d1dt(2) = h(4);
d1dt(1) = h(3);
d1dt(3) = 0;
d1dt(4) = -g*(1 - (2*h(4))/R);

d1dt = d1dt.';
end