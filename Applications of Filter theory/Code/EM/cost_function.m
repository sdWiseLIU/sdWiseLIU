function re = cost_function(y,x_0,X_1,par,K)
a = par(1);
b = par(2);
c = par(3);
mu = par(4);
cost = 0;
for k = 1:K
    cost = cost + ((y - (mu - exp(2*X_1(k))/2))/exp(X_1(k)))^2 + ((X_1(k) - (a + b*x_0))/c)^2;
end
re = cost;
end