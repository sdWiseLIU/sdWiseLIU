function re = estimation_1(x,N,delta_t,B)
sum = 0;

for i = 1:N
    final = Brownian_motion(delta_t,x,B);
    g = final(1)^2 - final(2)^2;
    sum = sum + g;
end

re = sum/N;