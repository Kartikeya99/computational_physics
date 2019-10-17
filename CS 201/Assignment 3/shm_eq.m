function d1dt = shm_eq(t, x)
g = 9.8;
l = 1;
d1dt(2) = -(g/l)*x(1);
d1dt(1) = x(2);
d1dt = d1dt.';
end