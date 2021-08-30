function re = simulation_result(N,par,delta_t)
a = par(1);
b = par(2);
c = par(3);
mu = par(4);
x = zeros(N + 1,1);
y = zeros(N + 1,1);
x(1) = randn;
y(1) = exp(x(1))*sqrt(delta_t)*randn + (mu - exp(2*x(1))/2)*delta_t;
for i = 1:N
    x(i + 1) = (a + b*x(i))*delta_t + c*sqrt(delta_t)*randn;
    y(i + 1) = exp(x(i + 1))*sqrt(delta_t)*randn + (mu - exp(2*x(i + 1))/2)*delta_t;
end
re = [x,y];
end