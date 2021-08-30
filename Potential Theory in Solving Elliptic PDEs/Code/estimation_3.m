function re = estimation_3(x,N,delta_t,B)
sum = 0;

for i = 1:N
    g = stochastic_integration(delta_t,x,B);
    sum = sum + g;
end

re = sum/N;