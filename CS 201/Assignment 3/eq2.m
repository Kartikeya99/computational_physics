function f = eq2(t,y);

    f = zeros(1,1);
    global cnst1;
    global cnst2;
    f(1) = (cnst1/y(1)) - (cnst2*y(1)*y(1));

end

