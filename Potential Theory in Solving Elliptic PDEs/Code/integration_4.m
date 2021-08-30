function re = integration_4(delta_t,x,B)
position = x;
sum = 0;

while in_boundary(position,B) == 0
    sum = sum - 2*((position(1) + 1)^2 + (position(2) + 1)^2)*delta_t;
    r_1 = sqrt(delta_t)*randn - 0.5*delta_t/(position(1) + 1);
    r_2 = sqrt(delta_t)*randn - 0.5*delta_t/(position(2) + 1);
    position(1) = position(1) + r_1;
    position(2) = position(2) + r_2;
end

final = intersection(position,B);
re = exp((1 + final(1))^2 + (1 + final(2))^2 + sum);
end