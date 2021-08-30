function re = EM_cost(par,y)
a = par(1);
b = par(2);
c = par(3);
mu = par(4);
re = exp(2*(b^2 + c^2 - a))*(y - mu)^2 + y - a - mu + exp(2*(a + b^2 + c^2))/4;
end