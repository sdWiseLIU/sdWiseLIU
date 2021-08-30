function re = estimation_4(x,N,delta_t,B)
sum = 0;

for i = 1:N
    g = integration_4(delta_t,x,B);
    sum = sum + g;
end

re = sum/N;
end