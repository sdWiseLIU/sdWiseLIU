function re = simulation_x(par,delta_t,N,K)
a = par(1);
b = par(2);
c = par(3);
X = zeros(N + 1,K);
for k = 1:K
    X(1,k) = c*sqrt(delta_t)*randn + a*delta_t;
    for i = 1:N
        X(i + 1,k) = (a + b*X(i,k))*delta_t + c*sqrt(delta_t)*randn;
    end
end
re = X;
end