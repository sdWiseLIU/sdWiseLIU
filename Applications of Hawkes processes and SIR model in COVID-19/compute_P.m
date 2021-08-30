function re = compute_P(i,j,lambda,omega,alpha_,time)
x = lambda;
for k = 1:(i - 1)
    x = x + alpha_*omega*exp(-omega*(time(i,1) - time(k,1)));
end
if i ~= j
    re = alpha_*omega*exp(-omega*(time(i,1) - time(j,1)))/x;
else
    re = lambda/x;
end