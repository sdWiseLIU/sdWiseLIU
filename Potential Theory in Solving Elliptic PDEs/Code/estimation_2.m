function re = estimation_2(x,N,delta_t,B)
sum = 0;

for i = 1:N
    final = stochastic_process(delta_t,x,B);
    g = final(1)^4 - final(2)^2;
    sum = sum + g;
end

re = sum/N;
end