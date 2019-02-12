function d1dt = spring_eq(t, x)
m = 3;
k = 5;
d1dt(2) = -(m/k)*x(1);
d1dt(1) = x(2);
d1dt = d1dt.';
end