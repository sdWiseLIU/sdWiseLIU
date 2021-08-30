function re = stochastic_process(delta_t,x,B)
position = x;

while in_boundary(position,B) == 0
    r_1 = sqrt(delta_t)*randn;
    r_2 = sqrt(6)*position(1)*sqrt(delta_t)*randn;
    position(1) = position(1) + r_1;
    position(2) = position(2) + r_2;
end

re = intersection(position,B);
end