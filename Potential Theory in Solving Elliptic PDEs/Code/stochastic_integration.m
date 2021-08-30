function re = stochastic_integration(delta_t,x,B)
position = x;
sum = 0;

while in_boundary(position,B) == 0
    sum = sum + -2*(position(1)^2 + position(2)^2)*delta_t;
    r_1 = sqrt(delta_t)*randn;
    r_2 = sqrt(delta_t)*randn;
    position(1) = position(1) + r_1;
    position(2) = position(2) + r_2;
end

final = intersection(position,B);
re = sum + exp(final(1)^2 - final(2)^2);
end