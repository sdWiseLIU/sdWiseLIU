function re = test_x(t,RA,x)
N = numel(x);
X = zeros(N,1);
for i = 1:N
    X(i) = 0.003*(0.1 - x(RA(i))) + 0.4*sqrt(0.001*x(RA(i)))*rand;
end
re = X;
end